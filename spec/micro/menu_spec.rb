# frozen_string_literal: true

RSpec.describe Micro::Menu do
  describe 'gem version' do
    it 'has a version number' do
      expect(described_class::VERSION).not_to be nil
    end

    it 'returns a version in valid format (1.22.128)' do
      expect(described_class::VERSION).to match /^\d{1,2}.\d{1,3}.\d{1,4}$/
    end
  end

  describe '.icons' do
    it 'returns icons module' do
      expect(described_class.icons).to be(Micro::Menu::Icons)
    end
  end

  describe '.configurations' do
    it 'returns configurations module' do
      expect(described_class.configurations).to be(Micro::Menu::Configurations)
    end
  end

  describe '.colors' do
    it 'returns instance of pastel' do
      expect(described_class.colors).to eq(Pastel.new)
    end
  end

  describe '.messages' do
    it 'returns messages module' do
      expect(described_class.messages).to be(Micro::Menu::Messages)
    end
  end
end
