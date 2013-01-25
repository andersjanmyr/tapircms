require 'spec_helper'

describe PageEntry do
  let(:page_entry) { Fabricate.build(:page_entry) }

  it 'has a page' do
    expect(page_entry.page).to be
  end

  it 'has a block' do
    expect(page_entry.block).to be
  end

  it 'has a feed' do
    expect(page_entry.feed).to be
  end

end
