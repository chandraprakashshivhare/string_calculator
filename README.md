# String Calculator

This is a simple String Calculator implemented in Ruby. The calculator can add numbers provided in a string format, with support for custom delimiters and handling of negative numbers.

## Features

- Add numbers from a string.
- Support for custom delimiters.
- Ignores numbers greater than 1000.
- Raises an error for negative numbers.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Ruby (version 2.7.2 or later)
- Bundler

### Installing

1. Clone the repository:

    ```sh
    git clone https://github.com/yourusername/string_calculator.git
    cd string_calculator
    ```

2. Install the required gems:

    ```sh
    bundle install
    ```

### Usage

To use the String Calculator, you can create an instance of the `StringCalculator` class and call the `add` method:

```ruby

calculator = Calculator.new
result = calculator.add("1,2,3")
puts result # Outputs: 6
