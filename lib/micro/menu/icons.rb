# frozen_string_literal: true

module Micro
  module Menu
    module Icons
      ICON_LIST = {
        'run' => "\ueb9e",
        'terminal' => "\uea85",
        'github' => "\uea84",
        'chart' => "\ue760",
        'jira' => "\ue75c",
        'settings' => "\ue615",
        'link' => "\ueb15"
      }

      def self.all
        ICON_LIST
      end
    end
  end
end
