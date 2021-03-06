require 'simplecov'
require 'coveralls'

require 'sidekiq'
require 'rspec-sidekiq'

require_relative 'support/init'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter
]
SimpleCov.start

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.include RSpec::Sidekiq::Spec::Support::Factories
end
