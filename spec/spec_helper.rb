# frozen_string_literal: true

# Configure Rails Environment
ENV['RAILS_ENV'] ||= 'test'

# Run Coverage report
require 'solidus_dev_support/rspec/coverage'

require File.expand_path('dummy/config/environment.rb', __dir__)

# Requires factories and other useful helpers defined in spree_core.
require 'solidus_dev_support/rspec/feature_helper'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

SolidusDevSupport::TestingSupport::Factories.load_for(SolidusRedirector::Engine)

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec
  config.color = true

  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false

  config.fail_fast = ENV['FAIL_FAST'] || false
end
