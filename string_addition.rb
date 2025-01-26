def split_by_delimiters(input_section, delimiters)
  # Split the string iteratively using provided delimiters
  delimiters.reduce([input_section]) do |sections, delimiter|
    sections.flat_map { |section| section.split(delimiter) }
  end
end

def validate_negatives(numbers)
  negatives = numbers.select { |n| n < 0 }
  raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
end

def add(input)
  return 0 if input.empty?

  input = input.gsub("\\n", "\n") # Sanitize input

  if input.start_with?("//")
    # Extract custom delimiters and input section
    delimiter_section, input_section = input.split("\n", 2)
    custom_delimiters = [delimiter_section[2..]]
    # Split numbers using custom delimiters
    sections = split_by_delimiters(input_section, custom_delimiters)
  else
    # Default delimiter splitting: commas and newlines
    sections = input.split(/,|\n/)
  end

  # Default delimiter splitting: commas and newlines
  sections = input.split(/,|\n/)

  # Extract numbers, convert to integers, and filter numbers > 1000
  numbers = sections.flat_map { |section| section.scan(/-?\d+/) }.map(&:to_i).reject { |n| n > 1000 }

  # Validate for negatives
  validate_negatives(numbers)

  # Return the sum
  numbers.sum
end
