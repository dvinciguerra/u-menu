# frozen_string_literal: true

require 'yaml'

module Micro
  module Menu
    # Configuration module
    # @private
    module Configurations
      CONFIGURATION_PATHS = [
        File.expand_path("#{Dir.home}/.umenurc.yml", __dir__),
        File.expand_path("#{Dir.home}/.umenu/umenurc.yml", __dir__)
      ]

      class << self
        def load
          path = CONFIGURATION_PATHS.first { |file_path| File.exist? file_path }
          @@config = YAML.load_file(path, symbolize_names: true)
          @@config.update(_path: path)
        end

        def init(path = nil)
          path ||= CONFIGURATION_PATHS.first
          return if File.exist?(path)

          File.write(path, <<~CONFIG)
            ---
            version: 0.1
            title: apps
            settings:
              editor: 'nvim'
            options:
              - name: 'DuckDuckGo /Search'
                value: duckduckgo
                type: link
                execute: 'https://duckduckgo.com'
              - name: '{{github}} Github'
                value: github
                type: link
                execute: 'https://github.com'
              - name: '{{github}} Github /Pull Requests'
                value: github_pulls
                type: link
                execute: 'https://github.com/pulls?q=is%3Apr+is%3Aopen+author%3A%40me+archived%3Afalse+sort%3Aupdated-desc'
              - name: '{{github}} Github /Issues'
                value: github_issues
                type: link
                execute: 'https://github.com/issues?q=is%3Aissue+is%3Aopen+author%3A%40me+archived%3Afalse+sort%3Aupdated-desc'
              - name: '{{github}} Github /Profile'
                value: github_profile
                type: link
                execute: 'https://github.com/dvinciguerra'
              - name: 'Rubygems'
                value: rubygems
                type: link
                execute: 'https://rubygems.org'
              - name: 'File Explorer'
                value: files
                type: command
                execute: 'ranger ${pwd}'
              - name: 'Tmux'
                value: tmux
                type: command
                execute: 'tmux'
              - name: 'Tmux /New Window'
                value: tmux_new_window
                type: command
                execute: 'tmux new-window'
              - name: 'Tmux /Kill Window'
                value: tmux_kill_window
                type: command
                execute: 'tmux kill-window'
          CONFIG
        end
      end
    end
  end
end
