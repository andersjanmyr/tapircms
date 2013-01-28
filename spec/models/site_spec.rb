require 'spec_helper'

describe Site do
  let(:site) { Fabricate.build(:site, name: 'Site') }

  describe 'default' do
    it 'has a name' do
      expect(site.name).to eq('Site')
    end

    it 'has no description' do
      expect(site.description).to be_nil
    end

    it 'has a stylesheet called application' do
      expect(site.stylesheet).to eq('application')
    end

    it 'has a javascript called application' do
      expect(site.javascript).to eq('application')
    end

    it 'has no theme' do
      expect(site.theme).to be_nil
    end
  end
end
