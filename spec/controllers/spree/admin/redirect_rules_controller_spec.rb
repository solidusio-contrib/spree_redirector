require 'spec_helper'

describe Spree::Admin::RedirectRulesController do
  # resourceful spree admin controller
  specify{ described_class.ancestors.should include(Spree::Admin::ResourceController) }

  specify { controller.send(:model_class).should == ::RedirectRule }

  describe 'build_resource' do
    subject{ controller.send(:build_resource) }
    it{ should be_a(RedirectRule) }
    it{ should be_active }
  end
end
