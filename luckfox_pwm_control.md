# PWM Control for Servo Motor

This guide shows how to enable PWM on a system, verify if it's enabled, and control a servo motor using a Python program. It assumes you're working on a system where the `periphery` library is available.

## Step 1: Enable PWM
To enable PWM, use the `luckfox-config` command:
```bash
luckfox-config
```

## Step 2: Verify PWM is Enabled
You can verify that PWM is enabled by checking the `/sys/class/pwm/` directory:
```bash
ls /sys/class/pwm/
```
If the directory exists, PWM is enabled on your system.

## Step 3: PWM Control for Servo Motor

The following Python program demonstrates how to control a servo motor using PWM.

```python
from periphery import PWM
import time

# Initialize PWM on the appropriate chip and channel
# Change the PWM chip and channel based on your hardware setup
pwm = PWM(10, 0)

try:
    # Servo motors typically use a 50 Hz signal
    pwm.frequency = 50
    pwm.polarity = "normal"
    pwm.enable()

    # Function to set the servo angle
    def set_servo_angle(angle):
        # Ensure the angle is within the valid range
        angle = max(0, min(180, angle))
        # Map the angle to the duty cycle (2.5% to 12.5%)
        duty_cycle = 0.025 + (angle / 180) * (0.125 - 0.025)
        pwm.duty_cycle = round(duty_cycle, 5)  # Precision for servo control
        print(f"Servo moved to {angle}° (Duty Cycle: {duty_cycle * 100:.2f}%)")

    # Continuous loop to get user input and move servo
    while True:
        try:
            # Prompt the user to enter the desired angle
            user_input = input("Enter servo angle (0 to 180°): ")
            if user_input.lower() == "exit":
                break
            # Convert input to an integer and set the angle
            angle = int(user_input)
            set_servo_angle(angle)
            time.sleep(0.5)  # Small delay for smooth operation
        except ValueError:
            print("Invalid input. Please enter a number between 0 and 180.")

except KeyboardInterrupt:
    print("\nProgram interrupted by user.")

finally:
    pwm.close()
    print("PWM closed.")
```
