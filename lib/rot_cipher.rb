class RotCipher

  def initialize text, shift='brute_force'
    @text      = text
    @shift     = shift.to_i
    @alphabet  = ('a'..'z').to_a
    @alpha_rot = Hash[@alphabet.zip(@alphabet.rotate @shift )]
    @brute_force ||= []
  end

  def encode
    @text.each_char.inject('') { |encrypt, char| encrypt + @alpha_rot[char] }
  end

  def decode
    @text.each_char.inject('') { |encrypt, char| encrypt + @alpha_rot.key(char) }
  end

  def brute_force
    all_shifts

    @shift.each do |shift|
      @alpha_rot = Hash[@alphabet.zip(@alphabet.rotate shift)]
      @brute_force << decode
    end

    @brute_force
  end

  private

  def all_shifts
    @shift = (1..26).to_a
  end
end
