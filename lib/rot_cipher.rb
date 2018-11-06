class RotCipher

  def initialize(text, shift)
    @text       = text
    @shift      = shift
    @dictionary = dictionary
  end

  def encode
    @text.each_char.inject('') { |encrypt, char| encrypt + @dictionary[char] }
  end

  def decode
    @text.each_char.inject('') { |encrypt, char| encrypt + @dictionary.key(char) }
  end

  def dictionary
    lowercase_dictionary.merge(uppercase_dictionary)
  end

  private

  def lowercase_dictionary
    lowercase_keys       = ('a'..'z').to_a
    lowercase_values     = lowercase_keys.rotate(@shift)
    Hash[lowercase_keys.zip(lowercase_values)]
  end

  def uppercase_dictionary
    uppercase_keys       = ('A'..'Z').to_a
    uppercase_values     = uppercase_keys.rotate(@shift)
    Hash[uppercase_keys.zip(uppercase_values)]
  end
end
