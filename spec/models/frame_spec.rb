require 'spec_helper'

describe Frame do
  before do
    Block.create!(name: 'hello')
  end
  let(:frame) { Frame.create!(name: 'frame', block_names: %w(hello)) }

  it 'has a name' do
    expect(frame.name).to eq('frame')
  end

  it 'has a default template' do
    expect(frame.template).to eq('default')
  end

  it 'has many blocks' do
    expect(frame.blocks).to have(1).item
  end
end
