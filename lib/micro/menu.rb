# frozen_string_literal: true

require_relative 'menu/configurations'
require_relative 'menu/icons'
require_relative 'menu/messages'
require_relative 'menu/version'

require 'pastel'

module Micro
  module Menu
    class Error < StandardError; end

    class << self
      def configurations
        Configurations
      end

      def icons
        Icons
      end

      def colors
        @colors ||= Pastel.new
      end

      def messages
        Messages
      end
    end
  end
end
