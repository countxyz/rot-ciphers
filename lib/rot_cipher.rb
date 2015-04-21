class RotCipher

  def initialize text, shift
    @text      = text
    @shift     = shift.to_i
    @alphabet  = ('a'..'z').to_a
    @alpha_rot = Hash[@alphabet.zip(@alphabet.rotate @shift )]
  end

  def encode
    @text.each_char.inject('') { |encrypt, char| encrypt + @alpha_rot[char] }
  end

  def decode
    @text.each_char.inject('') { |encrypt, char| encrypt + @alpha_rot.key(char) }
  end
end
