# frozen_string_literal: true

require 'yaml'

module Micro
  module Menu
    module Configurations
      CONFIGURATION_PATHS = [
        File.expand_path("#{Dir.home}/.umenurc.yml", __dir__),
        File.expand_path("#{Dir.home}/.umenu/umenurc.yml", __dir__),
      ]

      def self.load
        path = CONFIGURATION_PATHS.first { |file_path| File.exist? file_path }
        @@config = YAML.load_file(path, symbolize_names: true)
        @@config.update(_path: path)
      end
    end
  end
end
