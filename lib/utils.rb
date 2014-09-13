require 'securerandom'

def random_string_of_base64_with(length)
  SecureRandom.base64(length) #=> "IQJpznsrGSkTOzSPxVWCoA=="
end
