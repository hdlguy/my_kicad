

// the setup function runs once when you press reset or power the board
void setup() {
    // initialize digital pin LED_BUILTIN as an output.
    pinMode(LED_BUILTIN, OUTPUT);
    // console
    Serial.begin(115200);
}

// the loop function runs over and over again forever
uint32_t whilecount=0;
void loop() {
    //
    Serial.print(whilecount, HEX);
    Serial.println(": Hello World!");
    //
    digitalWrite(LED_BUILTIN, HIGH);
    delay(50); 
    digitalWrite(LED_BUILTIN, LOW);
    delay(450);
    //
    whilecount++;
}
