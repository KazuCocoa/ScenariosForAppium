require 'securerandom'

def random_string_of_base64_with(length)
  SecureRandom.base64(length) #=> "IQJpznsrGSkTOzSPxVWCoA=="
end

def rand_str(length)
  str = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  Array.new(length){str[rand(str.size)]}.join
end