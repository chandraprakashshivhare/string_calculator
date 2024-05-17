class Calculator
  # add numbers from a string
  def add(string)
    negatives = find_negatives(string)
    # Raise an error if there are negative numbers
    raise ArgumentError, "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?

    # Return 0 if the string is empty
    return 0 if string.empty?

    # Extract delimiter(s) and numbers from the string
    delimiter = extract_delimiter(string)
    numbers = extract_numbers(string, delimiter)
    
    # Sanitize the numbers and return their sum
    sanitized_numbers = sanitize_numbers(numbers)
    sanitized_numbers.sum
  end

  private

  # Finds and returns an array of negative numbers in the string
  def find_negatives(string)
    string.scan(/-\d+/)
  end

  # Extracts the delimiter from the string
  def extract_delimiter(string)
    # Default delimiter is ','
    return ',' unless string.start_with?('//')

    # Handle custom delimiter(s)
    if string.include?('[') && string.include?(']')
      # Multiple delimiters are defined within square brackets
      delimiters = string.scan(/\[([^\[\]]+)\]/).flatten
      Regexp.union(delimiters)
    else
      # Single character delimiter
      string[2]
    end
  end

  # Extracts numbers from the string based on the delimiter(s)
  def extract_numbers(string, delimiter)
    # Split the string into numbers using the delimiter(s) and newline as separators
    string.split(/#{delimiter}|\n/)
  end

  # Sanitizes the numbers: converts them to integers and rejects numbers greater than 1000
  def sanitize_numbers(numbers)
    numbers.map(&:to_i).reject { |num| num > 1000 }
  end
end
