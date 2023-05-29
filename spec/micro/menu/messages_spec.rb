# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Micro::Menu::Messages do
  describe '.thanks' do
    it 'returns thanks message strings' do
      expect(described_class.thanks).to be_kind_of Array
    end
  end
end
