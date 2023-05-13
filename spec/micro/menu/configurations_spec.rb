# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Micro::Menu::Configurations do
  describe '.load' do
    before do
      allow(File).to receive(:exist?).with(described_class::CONFIGURATION_PATHS.first).and_return(true)
      allow(YAML).to receive(:load_file).and_call_original
    end

    it 'calls yaml load_file' do
      described_class.load

      expect(YAML)
        .to have_received(:load_file)
        .with("#{Dir.home}/.umenurc.yml", symbolize_names: true)
    end
  end
end