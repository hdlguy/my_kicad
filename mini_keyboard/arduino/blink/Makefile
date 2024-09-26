.PHONY: clean install

./build/arduino.samd.nano_33_iot/blink.ino.hex: blink.ino
	arduino-cli compile --export-binaries --fqbn arduino:samd:nano_33_iot blink.ino

install:
	arduino-cli upload --log-file install.txt -p /dev/ttyACM0 --fqbn arduino:samd:nano_33_iot blink.ino

clean:
	rm -rf ./build

