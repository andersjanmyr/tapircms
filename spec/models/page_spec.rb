require 'spec_helper'

describe Page do

  context 'default' do
    before do
      Frame.create!(name: 'frame')
    end

    let(:page) { Page.create!(title: 'page', frame: Frame.where(name: 'frame').first) }

    it 'has a title' do
      expect(page.title).to be
    end

    it 'has a description' do
      expect(page.description).to be
    end

    it 'has a slug' do
      expect(page.slug).to be_nil
    end

    it 'has one frame' do
      expect(page.frame).to be
    end

    it 'has many entries' do
      page.add_entry('block', 'feed')
      page.add_entry('block', 'feed')
      page.save!
      expect(page.entries).to have(2).items
    end
  end

 context 'partial' do
   let(:frame) { Frame.new(template: 'default') }

   it 'returns the frame.template as a partial' do
     page = Page.new(frame: frame)
     expect(page.partial).to eq('/sites/frames/default')
   end
 end
end
