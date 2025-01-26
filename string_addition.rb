def validate_negatives(numbers)
  negatives = numbers.select { |n| n < 0 }
  raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
end

def add(input)
  return 0 if input.empty?

  input = input.gsub("\\n", "\n") # Sanitize input

  # Default delimiter splitting: commas and newlines
  sections = input.split(/,|\n/)

  # Extract numbers, convert to integers, and filter numbers > 1000
  numbers = sections.flat_map { |section| section.scan(/-?\d+/) }.map(&:to_i).reject { |n| n > 1000 }

  # Validate for negatives
  validate_negatives(numbers)

  # Return the sum
  numbers.sum
end
