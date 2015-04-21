require 'rot_cipher'

RSpec.describe RotCipher do

  describe 'Encoding' do

    specify { expect((RotCipher.new 'aaa', 4).encode).to eq 'eee' }
    specify { expect((RotCipher.new 'aaa', 5).encode).to eq 'fff' }
  end

  describe 'Decoding' do

    specify { expect((RotCipher.new 'eee', 4).decode).to eq 'aaa' }
    specify { expect((RotCipher.new 'fff', 5).decode).to eq 'aaa' }
  end

  describe 'Brute Force' do

    it 'provides decoding without Rot shift' do
      expect((RotCipher.new 'bbb').brute_force).to include 'ccc'
    end
  end
end
