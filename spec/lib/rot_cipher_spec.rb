require 'rot_cipher'

RSpec.describe RotCipher do
  describe 'Encoding' do
    it 'right shifts lower case characters in a string' do
      cipher = RotCipher.new('ab', 1)
      expect(cipher.encode).to eq 'bc'
    end

    it 'left shifts lower case characters in a string' do
      cipher = RotCipher.new('bc', -1)
      expect(cipher.encode).to eq 'ab'
    end

    it 'shifts across starting point' do
      cipher = RotCipher.new('yz', 1)
      expect(cipher.encode).to eq 'za'
    end
  end

  describe 'Decoding' do
    it 'left unshifts lower case characters in a string' do
      cipher = RotCipher.new('bc', 1)
      expect(cipher.decode).to eq 'ab'
    end

    it 'right unshifts lower case characters in a string' do
      cipher = RotCipher.new('bc', -1)
      expect(cipher.decode).to eq 'cd'
    end

    it 'unshifts across starting point' do
      cipher = RotCipher.new('ab', 1)
      expect(cipher.decode).to eq 'za'
    end
  end

  describe 'Brute Force' do
    it 'provides decoding without Rot shift' do
      cipher = RotCipher.new('bb')
      expect(cipher.brute_force).to include 'cc'
    end
  end
end
