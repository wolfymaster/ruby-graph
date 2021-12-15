# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

require 'graph_gem'
require 'faker'

RSpec.configure do |config|
    config.filter_run_when_matching :focus

    config.expect_with :rspec do |expectations|
        expectations.include_chain_clauses_in_custom_matcher_descriptions = true 
    end
end
