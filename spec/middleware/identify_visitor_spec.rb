require 'spec_helper'

describe IdentifyVisitor do
  subject(:instance) { described_class.new(context) }
  let(:context) do
    { request: instance_double(ActionDispatch::Request, params: {person: visitor}) }
  end

  context 'when bad things visit' do
    let(:visitor) do
      "ants"
    end 
    it { is_expected.to respond_with_status(401) }
  end

  context 'when good things visit' do
    let(:visitor) do
      "bunnies"
    end
    it { is_expected.to call_next_middleware }
    it { is_expected.to provide(visitor: "bunnies") }
  end
end
