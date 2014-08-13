require 'bundler/setup'
Bundler.setup

require 'capybara'
require 'capybara-webkit'

Dir['./spec/support/**/*.rb'].each { |f| require f }

Capybara.configure do |config|
  config.run_server        = false
  config.default_driver    = :webkit
  config.javascript_driver = :webkit
  config.app_host          = 'http://planet.timvideos.us'

  config.ignore_hidden_elements = false
end

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10
  config.order = :random

  config.include Capybara::DSL
  config.include WaitForAjax

  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end
end
