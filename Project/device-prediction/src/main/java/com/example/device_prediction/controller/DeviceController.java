package com.example.device_prediction.controller;

import com.example.device_prediction.entity.Device;
import com.example.device_prediction.repository.DeviceRepository;
import exception.ResourceNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/devices")
@Validated // Ensure controller-level validation
public class DeviceController {

    private static final Logger logger = LoggerFactory.getLogger(DeviceController.class);

    @Autowired
    private DeviceRepository deviceRepository;

    @PostMapping("/")
    public List<Device> getAllDevices() {
        return deviceRepository.findAll();
    }

    @GetMapping("/{id}")
    public Device getDeviceById(@PathVariable Long id) {
        return deviceRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Device not found with id " + id));
    }

    @PostMapping
    public Device addDevice(@Valid @RequestBody Device device) {
        return deviceRepository.save(device);
    }

    @PostMapping("/predict/{deviceId}")
    @Transactional
    public ResponseEntity<?> predictPrice(@PathVariable Long deviceId) {
        Device device = deviceRepository.findById(deviceId)
                .orElseThrow(() -> new ResourceNotFoundException("Device not found with id " + deviceId));

        // Prepare request data for Python API
        Map<String, Object> requestData = prepareRequestData(device);

        RestTemplate restTemplate = new RestTemplate();
        String pythonApiUrl = "http://localhost:5000/predict";
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        HttpEntity<Map<String, Object>> entity = new HttpEntity<>(requestData, headers);

        try {
            // Call the Python API to predict the price
            ResponseEntity<Map> response = restTemplate.postForEntity(pythonApiUrl, entity, Map.class);
            Map<String, Object> responseBody = response.getBody();

            if (response.getStatusCode() == HttpStatus.OK && responseBody != null) {
                int priceRange = (int) responseBody.get("price_range");
                device.setPriceRange(priceRange);
                deviceRepository.save(device);
                return ResponseEntity.ok(device);
            } else {
                logger.error("Failed to predict price for device ID: {}. Unexpected response: {}", deviceId, response);
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to predict price.");
            }
        } catch (HttpClientErrorException ex) {
            logger.error("Error while calling Python API for device ID: {}. Error: {}", deviceId, ex.getMessage());
            return ResponseEntity.status(ex.getStatusCode()).body(ex.getResponseBodyAsString());
        } catch (Exception ex) {
            logger.error("Error predicting price for device ID: {}", deviceId, ex);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to predict price.");
        }
    }

    private Map<String, Object> prepareRequestData(Device device) {
        Map<String, Object> requestData = new HashMap<>();
        requestData.put("battery_power", device.getBatteryPower());
        requestData.put("blue", device.getBlue());
        requestData.put("clock_speed", device.getClockSpeed());
        requestData.put("dual_sim", device.getDualSim());
        requestData.put("fc", device.getFc());
        requestData.put("four_g", device.getFourG());
        requestData.put("int_memory", device.getIntMemory());
        requestData.put("m_dep", device.getMDep());
        requestData.put("mobile_wt", device.getMobileWt());
        requestData.put("n_cores", device.getNCores());
        requestData.put("pc", device.getPc());
        requestData.put("px_height", device.getPxHeight());
        requestData.put("px_width", device.getPxWidth());
        requestData.put("ram", device.getRam());
        requestData.put("sc_h", device.getScH());
        requestData.put("sc_w", device.getScW());
        requestData.put("talk_time", device.getTalkTime());
        requestData.put("three_g", device.getThreeG());
        requestData.put("touch_screen", device.getTouchScreen());
        requestData.put("wifi", device.getWifi());
        return requestData;
    }
}
