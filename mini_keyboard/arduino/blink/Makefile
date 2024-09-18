.PHONY: clean burn

./build/arduino.samd.nano_33_iot/blink.ino.hex: blink.ino
	arduino-cli compile --export-binaries --fqbn arduino:samd:nano_33_iot blink.ino

burn:
	arduino-cli upload --log-file burn.txt -p /dev/ttyACM0 --fqbn arduino:samd:nano_33_iot blink.ino

clean:
	rm -r build

