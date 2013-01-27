require 'spec_helper'

describe Page do

  context 'default' do
    let(:page) { Fabricate.build(:page) }

    it 'has a title' do
      expect(page.title).to be
    end

    it 'has a description' do
      expect(page.description).to be
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

 context 'partial' do
   let(:frame) { Frame.new(template: 'default') }

   it 'returns the frame.template as a partial' do
     page = Page.new(frame: frame)
     expect(page.partial).to eq('/sites/frames/default.html')
   end
 end
end
