def add(input)
  return 0 if input.empty?

  input = input.gsub("\\n", "\n") # Sanitize input

  # Default delimiter splitting: commas and newlines
  sections = input.split(/,|\n/)

  # Extract numbers, convert to integers, and filter numbers > 1000
  numbers = sections.flat_map { |section| section.scan(/-?\d+/) }.map(&:to_i).reject { |n| n > 1000 }

  # Return the sum
  numbers.sum
end
