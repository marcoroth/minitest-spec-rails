require 'test_helper'

module ActiveSupport
  class TestCase
    fixtures :all
    include MinitestSpecRails::SharedTestCaseBehavior
  end
end
