## Driver in the Loop

Project made by Silesian University of Technology and Sun Moon University students.

## Used Project

* Carla simulator set up on PC(OS is Linux)
* ROS with Ubuntu as the supported operating system
* Raspberry Pi 4
* Python, C++
* CATIA 3D program

## Project Description


* **Identify ROS Topics** : First, identify the ROS topics in Carla Simulator responsible for publishing vehicle control-related data. This data typically includes roll, pitch, yaw, steering, and DC motor values.
* **Raspberry Pi Subscription** : Configure the Raspberry Pi to subscribe to these identified topics to receive data from Carla Simulator.
* **Data Processing** : Develop a program on the Raspberry Pi to process the received data. This program should interpret the data and convert it into commands for controlling the servo motors for steering and the DC motor
* **Servo Motor Control** : Connect servo motors to the Raspberry Pi GPIO pins. Use a suitable library (e.g., RPi.GPIO) to control the servo motors based on the interpreted data.
* **DC Motor Control** : Similarly, connect a DC motor to the Raspberry Pi GPIO pins. Use a suitable motor driver (e.g., L298N) and library to control the DC motor based on the interpreted data.
* **Integration and Testing** : Integrate all components together and test the system. Verify that the Raspberry Pi can effectively control the servo motors and DC motor based on the data received from Carla Simulator.
* **Optimization** : Fine-tune the control algorithms as needed to improve performance. Consider factors such as responsiveness, accuracy, and stability.
* **Documentation**: Document the project, including setup instructions, code explanations, and any challenges faced during implementation. This documentation will be helpful for future reference and sharing with others.
* **Presentation** : Prepare a presentation to showcase the project, its objectives, methodology, and outcomes. Demonstrate how the Raspberry Pi controls the simulated vehicle in Carla Simulator using ROS communication.



