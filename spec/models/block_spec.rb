require 'spec_helper'

describe Block do
  before do
    Puff.create!(name: 'one')
  end
  let(:block) { Block.create!(name: 'B', puff_names: %w(one one)) }

  it 'has a name' do
    expect(block.name).to eq('B')
  end

  it 'has a default template' do
    expect(block.template).to eq('default')
  end

  it 'has many blocks' do
    expect(block.puffs).to have(2).items
  end
end
