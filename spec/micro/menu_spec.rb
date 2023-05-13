# frozen_string_literal: true

RSpec.describe Micro::Menu do
  it 'has a version number' do
    expect(Micro::Menu::VERSION).not_to be nil
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
end
