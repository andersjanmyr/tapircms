require 'spec_helper'

describe Puff do
  let(:puff) { Fabricate.build(:puff) }

  it 'has a name' do
    expect(puff.name).to be
  end

  it 'has a default template' do
    expect(puff.template).to eq('default')
  end
end
