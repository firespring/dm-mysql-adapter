require 'rspec'
require 'dm-core/spec/lib/pending_helpers'

RSpec.configure do |config|
  config.include(DataMapper::Spec::PendingHelpers)
end
