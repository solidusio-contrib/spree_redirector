require 'spec_helper'

RSpec.describe Spree::Admin::RedirectRulesController, type: :controller do
  it 'specifies the Redirector-provided model' do
    expect(controller.send(:model_class)).to eq ::RedirectRule
  end

  describe 'build_resource' do
    subject{ controller.send(:build_resource) }
    it { is_expected.to be_a(RedirectRule) }
    it { is_expected.to be_active }
  end
end
