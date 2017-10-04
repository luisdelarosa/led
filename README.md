# led
Small LED library for use with Swift on Raspberry Pi

This makes it easier to use LEDs with Swift.

Here is a small example that will turn on an LED that is connected to GPIO pin 17 on a Raspberry Pi 3.
```
let led = LED(gpioPin: .P17)
led.value = 1
```

Here is a more verbose example, that is equivalent to the first example:
```
let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
let led = LED(gpioPin: .P17, swiftyGPIOs: gpios)
led.value = 1
```

See [**blink** aka Hello World for Swift on Raspberry Pi: Blink an LED](https://github.com/luisdelarosa/blink) for a full example.
