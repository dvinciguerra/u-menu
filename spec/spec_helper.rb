# frozen_string_literal: true

require 'u-menu'

require 'simplecov'
require 'securerandom'

SimpleCov.start

SimpleCov.at_exit do
  puts 'Coverage done'
  SimpleCov.result.format!
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
