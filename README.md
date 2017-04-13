# G17_JustDab
## Name: 
Just Dab - A Movement-Based Game Using a Host Computer WebCam, Neural Network, and Xilinx FPGA
## Authors:
* Maxim Antipin
* Jonathan Chan
* Ted (Mingyi) Jia
## Desc: 
Movement based game with a neural network for detection of movement accuracy on a Xilinx Nexys 4 FPGA
## Repository Structure
```
.
├── docs				# Final Report Documentation and Presentation Slides
├── input				# Program and Scripts for providing input to FPGA
├── src					# Vivado 2016.2 Project Files
├── README.md
```
## How to use:
* Requires a Host computer with Administrative privileges
* Requires a Host computer with Python installed
* Requires a Host computer with a WebCam
* Requires a monitor that supports low resolutions (320x240)
### Set-Up
1. Open the Vivado Project found in the src/ directory (Project created on Vivado Version 2016.2)
2. Open the Hardware Manager, auto-connect the board, then program the board
3. Click "File" and then "Launch SDK" to Launch the SDK with the Neural Network Code
4. Program the FPGA from the SDK under "Xilinx Tools"
5. On the host system, find the COM port that the FPGA is connected to
   1. This can be done by checking the SDK on the COM port it is connected to
   2. Under "Run" and clicking "Run Configurations..."
   3. Click the "STDIO Connection" tab and check the Port that is listed here
      * OR Open device manager and check under COM ports the port number the board is connected to
   4. Make note of the COM port
6. In the /input folder, edit "pngdecode.py" and modify the COM port used for sending data to the FPGA:
```
port = 'COM4',
```
7. Open a command-prompt window inside the /input directory and type the following command
   * Keep note of the WebCam name
```
ffmpeg -list_devices true -f dshow -i dummy
```
8. Modify the "capture_1sec.bat" batch script line and replace the WebCam name with your device's WebCam
```
-video="<INSERT WEBCAM NAME HERE>"
```
9. Position the WebCam so that you are positioned in the middle and your shoulders are positioned at the bottom of the picture
   * About 4 feet away (or roughly 7 x Nexys 4 DDR Boxes away from the WebCam)
### Run
1. On the Xilinx SDK, click "Run" to start the Neural Network on the FPGA
2. Open a command prompt inside the /input folder and run the command:
```
python pngdecode.py
```
3. Double-click the "capture_1sec.bat" script to start capturing from the WebCam
4. Stay still for the first few pictures to calibrate
   * Note: Some WebCams need to be warmed up first before getting a clear picture, please take a few pictures to warmup the camera
   


