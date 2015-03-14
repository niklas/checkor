require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    # ...or explicitly enable both
    c.syntax = [:should, :expect]
  end
  config.mock_with :rspec do |c|
    # ...or explicitly enable both
    c.syntax = [:should, :expect]
  end
end

require File.expand_path '../../lib/checkor', __FILE__

