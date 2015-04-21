require 'rot_cipher'

RSpec.describe RotCipher do

  describe 'Encoding' do

    it 'encodes a Rot4 shift' do
      expect((RotCipher.new 'aaa').encode).to eq 'eee'
    end
  end
end
