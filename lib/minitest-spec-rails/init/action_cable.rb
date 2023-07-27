unless defined?(ActionCable::Channel)
  require 'action_cable/channel'
end

require 'action_cable/channel/test_case'

module MinitestSpecRails
  module Init
    module ActionCableBehavior
      extend ActiveSupport::Concern

      included do
        class_attribute :_helper_class
        register_spec_type(/(Channel)( ?Test)?\z/, self)
        register_spec_type(self) { |desc| desc.is_a?(Class) && desc < self }
        extend Descriptions
      end

      module Descriptions
        def described_class
          determine_default_helper_class(name)
        end
      end
    end
  end
end

ActionCable::Channel::TestCase.include MinitestSpecRails::Init::ActionCableBehavior
