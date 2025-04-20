# Final Project
# SW/HW Optimization for Neural Networks in a TFLM Environment on a RISC Processor

Final project for integrating a low-cost OV7670 camera with the Ultra96-V2 board to enable real-time image capture and processing using a RISC processor and TensorFlow Lite for Microcontrollers (TFLM).

📘 **[Final Report (PDF)](./fin-2024-046.pdf)** — Full report documentation

## 🧠 Overview

- 📷 Captures image data from the OV7670 camera.
- 🔧 Stores and processes image data in BRAM via a modular FPGA design.
- 🧪 Debugged using Vivado ILA and visualized with Python via PYNQ.

## 📁 Project Structure

```bash
.
├── fin-2024-046.pdf               # Final PDF report
├── Vivado_Project/               # Full Vivado project with block design & ILA setup
├── Vitis_Project/                # Vitis project for programming and debugging
├── design_1/                     # Exported hardware (.bit and .hwh)
└── python_pynq_scripts/         # Python (PYNQ) scripts to run on Ultra96-V2

```
## 🚀 Getting Started
### 1. Vivado
- Open the `Vivado_Project`
- Generate the bitstream
- Export hardware → extract `.bit` and `.hwh` files from the `.xsa`

### 2. Vitis
- Use the exported `.xsa` to program the FPGA

### 3. PYNQ Setup
- Flash a PYNQ image to an SD card (e.g., using BalenaEtcher)
- Boot the Ultra96-V2 and connect to `192.168.3.1/lab` in a browser
- Upload `.bit`, `.hwh`, and Python scripts
- Run the Python scripts to capture and reconstruct the image

### 4. Wiring
- Connect the OV7670 camera to the Ultra96-V2 using jumper wires  
  → Full pinout diagram is in the final report (PDF)

---

## 🔧 Tools & Technologies

- **Board**: Xilinx Ultra96-V2 (Zynq UltraScale+ MPSoC)
- **Camera**: OV7670 CMOS VGA image sensor
- **Languages**: VHDL (FPGA), C (Vitis), Python (PYNQ)
- **Software**: Vivado 2022.2, Vitis, BalenaEtcher, PYNQ

---
