require 'rot_cipher'

RSpec.describe RotCipher do

  describe 'Encoding' do
    it 'shifts lower case characters in a string' do
      cipher = RotCipher.new('ab', 1)
      expect(cipher.encode).to eq 'bc'
    end
  end

  describe 'Decoding' do
    it 'unshifts lower case characters in a string' do
      cipher = RotCipher.new('bc', 1)
      expect(cipher.decode).to eq 'ab'
    end
  end

  describe 'Brute Force' do
    it 'provides decoding without Rot shift' do
      cipher = RotCipher.new('bb')
      expect(cipher.brute_force).to include 'cc'
    end
  end
end
