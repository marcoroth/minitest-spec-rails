require 'dummy_app/init'
require 'support/shared_test_case_behavior'

module MinitestSpecRails
  class TestCase < Minitest::Spec
    include MinitestSpecRails::SharedTestCaseBehavior
  end
end
