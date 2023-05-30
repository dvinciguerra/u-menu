# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Micro::Menu::Configurations do
  describe '.load' do
    before do
      allow(File).to receive(:exist?).with(described_class::CONFIGURATION_PATHS.first).and_return(true)
      allow(YAML).to receive(:load_file).and_return({})
    end

    it 'calls yaml load_file' do
      described_class.load

      expect(YAML)
        .to have_received(:load_file)
        .with("#{Dir.home}/.umenurc.yml", symbolize_names: true)
    end
  end

  describe '.init' do
    let(:path) { "../../tmp/#{SecureRandom.uuid}.yml" }

    before do
      allow(File).to receive(:write)
    end

    it 'creates a new configuration file' do
      described_class.init(path)

      expect(File)
        .to have_received(:write)
        .with(path, match("---\nversion: 0.1\ntitle: apps\nsettings:\n  editor: 'nvim'\n"))
    end
  end
end
