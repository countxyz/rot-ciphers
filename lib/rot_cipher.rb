class RotCipher

  def initialize text, shift
    @text     = text
    @shift    = shift.to_i
    @alphabet = ('a'..'z').to_a
    @key      = Hash[@alphabet.zip(@alphabet.rotate @shift )]
  end

  def encode
    @text.each_char.inject('') { |encrypted, char| encrypted + @key[char] }
  end
end
