# string_calculator_using_tdd

## TDD: Tests are written before the actual implementation of the code.

### Problem Statement: 
The goal is to implement a **String Calculator** that performs addition on a string of numbers. The solution will be built using the principles of **Test-Driven Development (TDD)**. 

### Project Overview:
In this project, the String Calculator must follow specific rules:
1. The calculator should return the sum of the numbers passed in the string, where the numbers are separated by commas or newlines.
2. It should support custom delimiters in the format `//[delimiter]\n`.
3. The calculator should ignore numbers greater than `1000`.
4. If negative numbers are provided, an exception should be thrown with a message that lists the negative numbers.

### Things Used:
- **Ruby** Language: Version `3.3.3`
- **Byebug**: Ruby gem used for debugging.
- **RSpec**: Ruby gem used for writing test cases.
- **VSCode**: Code editor for development.

### How to Setup the Project:

#### 1. Ruby Installation:
Ensure that Ruby version `3.3.3` is installed. You can check this by running:
```bash
ruby -v
bundle install
# To run a single test case:
rspec spec/string_addition_spec.rb
# To run all test cases:
rspec

# The output will look like this:

string_calculator_using_tdd % rspec spec/string_addition_spec.rb
............

Finished in 0.0049 seconds (files took 0.08802 seconds to load)
12 examples, 0 failures
```
