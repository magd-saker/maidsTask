import requests
import json

# Define the base URL of your Spring Boot application
base_url = 'http://localhost:8080/api/devices'

# Function to perform GET request to retrieve all devices
def get_all_devices():
    url = f"{base_url}/"
    response = requests.post(url)
    print(f"GET All Devices Response Code: {response.status_code}")
    if response.status_code == 200:
        devices = response.json()
        print("All Devices:")
        print(json.dumps(devices, indent=2))
    else:
        print("Failed to retrieve all devices.")

# Function to perform GET request to retrieve a specific device by ID
def get_device_by_id(device_id):
    url = f"{base_url}/{device_id}"
    response = requests.get(url)
    print(f"GET Device by ID Response Code: {response.status_code}")
    if response.status_code == 200:
        device = response.json()
        print(f"Device with ID {device_id}:")
        print(json.dumps(device, indent=2))
    elif response.status_code == 404:
        print(f"Device with ID {device_id} not found.")
    else:
        print(f"Failed to retrieve device with ID {device_id}.")

# Function to perform POST request to add a new device
def add_new_device(device_data):
    url = f"{base_url}"
    headers = {'Content-Type': 'application/json'}
    response = requests.post(url, headers=headers, json=device_data)
    print(f"Add New Device Response Code: {response.status_code}")
    if response.status_code == 200:
        new_device = response.json()
        print("New Device added successfully:")
        print(json.dumps(new_device, indent=2))
    else:
        print("Failed to add new device.")

# Function to perform POST request to predict price for a device
def predict_price(device_id):
    url = f"{base_url}/predict/{device_id}"
    response = requests.post(url)
    print(f"Predict Price Response Code: {response.status_code}")
    if response.status_code == 200:
        predicted_device = response.json()
        print("Predicted Device with Price Range:")
        print(json.dumps(predicted_device, indent=2))
    else:
        print(f"Failed to predict price for device with ID {device_id}.")

# Test cases

# 1. Retrieve all devices
print("--- Retrieving all devices ---")
get_all_devices()

# 2. Retrieve device by ID (replace 1 with an existing device ID in your database)
print("\n--- Retrieving device by ID ---")
get_device_by_id(1)

# 3. Add a new device (replace with valid device data as per your entity structure)
print("\n--- Adding a new device ---")
new_device_data = {
    "name": "New Device",
    "brand": "New Brand",
    "batteryPower": 3000,
    "blue": True,
    "clockSpeed": 2.5,
    "dualSim": True,
    "fc": 10,
    "fourG": True,
    "intMemory": 128,
    "mDep": 0.7,
    "mobileWt": 180,
    "nCores": 12,
    "pc": 16,
    "pxHeight": 2560,
    "pxWidth": 1440,
    "ram": 8192,
    "scH": 7,
    "scW": 5,
    "talkTime": 20,
    "threeG": True,
    "touchScreen": True,
    "wifi": True,
    "priceRange": 3
}
add_new_device(new_device_data)

# 4. Predict price for a device (replace 1 with an existing device ID in your database)
print("\n--- Predicting price for a device ---")
predict_price(1)
