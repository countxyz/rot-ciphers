class RotCipher

  def initialize text
    @text     = text
    @alphabet = ('a'..'z').to_a
    @key      = Hash[@alphabet.zip(@alphabet.rotate 4 )]
  end

  def encode
    @text.each_char.inject('') { |encrypted, char| encrypted + @key[char] }
  end
end
