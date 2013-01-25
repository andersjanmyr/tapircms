require 'spec_helper'

describe Page do
  let(:page) { Fabricate.build(:page) }

  it 'has a name' do
    expect(page.name).to be
  end

  it 'has a slug' do
    expect(page.slug).to be
  end

  it 'has one frame' do
    page.frame = Fabricate.build(:frame)
    expect(page.frame).to be
  end

  it 'has many entries' do
    page.entries << Fabricate.build(:page_entry)
    page.entries << Fabricate.build(:page_entry)
    expect(page.entries).to have(2).items
  end
end
