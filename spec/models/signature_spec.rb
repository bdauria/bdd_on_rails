require 'rails_helper'

RSpec.describe Signature, type: :model do
  context 'using 41 characters long name' do
    let(:name) { 'a' * 41 }
    it 'does not persist the model' do
      expect(Signature.new(name: name)).not_to be_valid
    end
  end
end
