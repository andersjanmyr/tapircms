require 'spec_helper'

describe Block do
  let(:block) { Fabricate.build(:block) }

  it 'has a name' do
    expect(block.name).to be
  end

  it 'has a name' do
    expect(block.template).to eq('default')
  end

  it 'has many blocks' do
    expect(block.puffs).to have(3).items
  end
end
