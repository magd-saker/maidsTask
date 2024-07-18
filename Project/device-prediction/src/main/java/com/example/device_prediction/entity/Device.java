    package com.example.device_prediction.entity;

    import jakarta.persistence.*;


    @Entity
    @Table(name = "device", schema = "dbo")
    public class Device {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column(name = "battery_power")
        private int batteryPower;

        @Column(name = "blue")
        private int blue;

        @Column(name = "clock_speed")
        private double clockSpeed;

        @Column(name = "dual_sim")
        private int dualSim;

        @Column(name = "fc")
        private int fc;

        @Column(name = "four_g")
        private int fourG;

        @Column(name = "int_memory")
        private int intMemory;

        @Column(name = "m_dep")
        private double mDep;

        @Column(name = "mobile_wt")
        private int mobileWt;

        @Column(name = "n_cores")
        private int nCores;

        @Column(name = "pc")
        private int pc;

        @Column(name = "px_height")
        private int pxHeight;

        @Column(name = "px_width")
        private int pxWidth;

        @Column(name = "ram")
        private int ram;

        @Column(name = "sc_h")
        private int scH;

        @Column(name = "sc_w")
        private int scW;

        @Column(name = "talk_time")
        private int talkTime;

        @Column(name = "three_g")
        private int threeG;

        @Column(name = "touch_screen")
        private int touchScreen;

        @Column(name = "wifi")
        private int wifi;

        @Column(name = "price_range")
        private Integer priceRange ;


        // Getters and Setters
        public Long getId() { return id; }
        public void setId(Long id) { this.id = id; }

        public int getBatteryPower() { return batteryPower; }
        public void setBatteryPower(int batteryPower) { this.batteryPower = batteryPower; }

        public int getBlue() { return blue; }
        public void setBlue(int blue) { this.blue = blue; }

        public double getClockSpeed() { return clockSpeed; }
        public void setClockSpeed(double clockSpeed) { this.clockSpeed = clockSpeed; }

        public int getDualSim() { return dualSim; }
        public void setDualSim(int dualSim) { this.dualSim = dualSim; }

        public int getFc() { return fc; }
        public void setFc(int fc) { this.fc = fc; }

        public int getFourG() { return fourG; }
        public void setFourG(int fourG) { this.fourG = fourG; }

        public int getIntMemory() { return intMemory; }
        public void setIntMemory(int intMemory) { this.intMemory = intMemory; }

        public double getMDep() { return mDep; }
        public void setMDep(double mDep) { this.mDep = mDep; }

        public int getMobileWt() { return mobileWt; }
        public void setMobileWt(int mobileWt) { this.mobileWt = mobileWt; }

        public int getNCores() { return nCores; }
        public void setNCores(int nCores) { this.nCores = nCores; }

        public int getPc() { return pc; }
        public void setPc(int pc) { this.pc = pc; }

        public int getPxHeight() { return pxHeight; }
        public void setPxHeight(int pxHeight) { this.pxHeight = pxHeight; }

        public int getPxWidth() { return pxWidth; }
        public void setPxWidth(int pxWidth) { this.pxWidth = pxWidth; }

        public int getRam() { return ram; }
        public void setRam(int ram) { this.ram = ram; }

        public int getScH() { return scH; }
        public void setScH(int scH) { this.scH = scH; }

        public int getScW() { return scW; }
        public void setScW(int scW) { this.scW = scW; }

        public int getTalkTime() { return talkTime; }
        public void setTalkTime(int talkTime) { this.talkTime = talkTime; }

        public int getThreeG() { return threeG; }
        public void setThreeG(int threeG) { this.threeG = threeG; }

        public int getTouchScreen() { return touchScreen; }
        public void setTouchScreen(int touchScreen) { this.touchScreen = touchScreen; }

        public int getWifi() { return wifi; }
        public void setWifi(int wifi) { this.wifi = wifi; }

        public Integer getPriceRange() { return priceRange; }
        public void setPriceRange(Integer priceRange) { this.priceRange = priceRange; }
    }
