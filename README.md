# OpenIC

An open source instrument cluster designed around a 1920x720 LCD and a Raspberry Pi. Primary test subject is a 1998 Jeep Grand Cherokee which communicates via CCD. We will take CCD and forward it to CAN and read in the CAN. Signal definitions will be done via DBC file.

### Parts List
###### Display
- C123HAN01.0 LCD (Aliexpress)
- HDMI driver board (Aliexpress/Alibaba)
###### Compute
- Raspberry Pi 3B
- Arduino (CCD to CAN adapting)

###### Car Communications
- MCP2551 (CAN at 500k baud)
- MCP2515 (SPI)
- CDP68HC68HC1 (CCD at 7812 baud)

### Initial Issues w/ 1998 Jeep Grand Cherokee 5.9 Limited
- The IC is a bus termination and bias point (unlike CAN, CCD only gets power and ground from certain modules, not every module). So, we'll need to recreate that on our board.
- The instrument cluster provides bias to the ABS lamp and if all is okay, the ABS module turns off the lamp (floats the ground, I'm assuming).
- Turn signals are done at a low level, so we need to read their states via transistors and display them on the screen.
- Everything else is done via CCD (such as the cruise available state. Don't know if engaged or not is available).

### Display Fitment
- We need to recreate the row of warning/status lamps at the bottom as the LCD is too tall to keep them.
- Design and have CNC cut an overlay to over the LCD
- Design and 3d print the brackets for the LCD, LED Driver connections at the display (fragile), LCD and LED Driver, RPi.

### General LCD Issues
- Many LCD Driver boards come with manual keys for the menu system and also brightness adjustment. It seems like the LED driver board accepts a PWM signal from the LCD Driver board for brightness. Probably offload this onto an attiny or something similar to handle that task. Needs to be separate from the main avr as it is a time specific task and crucial to the display function.
