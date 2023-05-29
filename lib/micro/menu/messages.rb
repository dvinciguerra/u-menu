# frozen_string_literal: true


module Micro
  module Menu
    module Messages
      class << self
        def thanks
          [
            colors.green('Great job! o/'),
            colors.green('See you later! =)'),
            colors.green('Baby bye bye bye...'),
            "Bring me #{colors.green('a cookie')} when you come back!?",
            "Have a nice #{colors.cyan('day')}! =)",
            "See you later #{colors.green('olligator')}! =)"
          ]
        end

        private

        def colors
          Micro::Menu.colors
        end
      end
    end
  end
end

