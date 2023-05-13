# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Micro::Menu::Icons do
  describe '.all' do
    it 'returns all icons' do
      expect(described_class.all).to be_kind_of Hash
    end
  end
end
