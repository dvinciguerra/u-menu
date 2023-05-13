# frozen_string_literal: true

require_relative 'menu/configurations'
require_relative 'menu/icons'
require_relative 'menu/version'

require 'pastel'

module Micro
  module Menu
    class Error < StandardError; end

    def self.configurations
      Configurations
    end

    def self.icons
      Icons
    end

    def self.colors
      @colors ||= Pastel.new
    end
  end
end
