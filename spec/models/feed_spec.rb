require 'spec_helper'

describe Feed do
  let(:feed) { Feed.create!(name: 'feed', uri: 'uri') }

  it 'has a name' do
    expect(feed.name).to be
  end

  it 'has a uri' do
    expect(feed.uri).to be
  end

end
