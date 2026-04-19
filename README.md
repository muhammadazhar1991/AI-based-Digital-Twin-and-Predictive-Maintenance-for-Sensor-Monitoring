# 🔧 AI-Based Digital Twin and Predictive Maintenance for Sensor Monitoring

This project is a MATLAB-based Digital Twin system for real-time sensor monitoring, anomaly detection, and predictive maintenance.


## 🚀 Features

- 📡 Real-time data visualization
- 🤖 LSTM-based prediction (Digital Twin)
- 🚨 Anomaly detection 
- 🔮 Time-series forecasting
- ❤️ Sensor health monitoring (Drift, Noise, Health Score)
- 🛠 Maintenance analysis dashboard

## Demo
https://youtu.be/9X2GirqrllU - See the project in action.


## 📁 Folder Structure

```text
AI-based DigitalTwin and Predictive Maintenance/
│
├── matlab app files/
│   └── Mainpage.mlapp
│   └──Realtime.mlapp
│   └──DigitalTwin.mlapp
│   └──UploadData.mlapp
│   └──MaintenanceAnalysis.mlapp
│
├── models/
│   └── lstmmodel.mat
│
│── screenshots/
│   └── mainpage.png  
│   └── realtime.png
│    └── digitaltwin.png
│    └── uploaddataset.png
│    └── maintenanceanalysis.png
│
├── data/
│   └── sensor.csv
│
├── matlab files/
│   ├── getdata.m
│   ├── trainModel.m
│   └── predModel.m
│   └── forecastAnalysis.m
└── README.md
 

## 🧠 System Architecture

Sensor Data → ML Models → Forecast → Health Analysis → Maintenance Decision


## 📊 Modules

### 1. Real-Time Monitoring
Displays incoming sensor data.

### 2. Digital Twin (ML)
- Predicts expected sensor behavior
- Detects anomalies

### 3. Upload Dataset
- Enable users to upload custom sensor data files(.csv,.txt)
- Predicts expected sensor behavior and detects anomalies

### 4. Maintenance Analysis
- Predicts future sensor values using fast, balanced and accurate methods
- Health score (0–100%)
-Estimate Drift and noise 


---

## 🛠 Technologies Used

- MATLAB App Designer
- LSTM Neural Network
- Time-Series Forecasting

---

## 📂 How to Run

1. Open MATLAB
2. Open `Mainpage.mlapp`
3. Keep all the files in same folder and Click **Run**
4. Load sample data or use live data

---

## 📈 Example Outputs

- Sensor prediction vs actual
- Anomaly detection plot
- Forecast graph
- Health score dashboard

---

## 💼 Use Case

This system can be used for:
- Industrial IoT monitoring
- Predictive maintenance
- Fault detection in sensors


## 👤 Author

Muhammad Azhar Mehboob

