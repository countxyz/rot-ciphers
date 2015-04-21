require 'rot_cipher'

RSpec.describe RotCipher do

  describe 'Encoding' do
    specify { expect((RotCipher.new 'aaa', 4).encode).to eq 'eee' }
    specify { expect((RotCipher.new 'aaa', 5).encode).to eq 'fff' }
  end
end
