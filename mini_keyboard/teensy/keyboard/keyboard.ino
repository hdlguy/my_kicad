// This program is a stand-in for the code that will read key presses and send characters out the usb interface.
#include <Keyboard.h>
#include <stdio.h>
#include <string>

int count = 0;

void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
} 

void loop() {

    digitalWrite(LED_BUILTIN, count&0x01);

    Keyboard.printf("echo %d\n", count); 

    count = count + 1;
    delay(2000);

}