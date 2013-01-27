require 'spec_helper'

describe Frame do
  let(:frame) { Fabricate.build(:frame) }

  it 'has a name' do
    expect(frame.name).to be
  end

  it 'has a default template' do
    expect(frame.template).to eq('_default')
  end

  it 'has many blocks' do
    expect(frame.blocks).to have(2).items
  end
end
