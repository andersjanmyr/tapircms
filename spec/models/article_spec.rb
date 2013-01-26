require 'spec_helper'

describe Article do
  let(:article) { Fabricate.build(:article) }

  it 'has a title' do
    expect(article.title).to be
  end

  it 'has an abstract' do
    expect(article.abstract).to be
  end

  it 'has content' do
    expect(article.content).to be
  end

  it 'has a URI' do
    expect(article.uri).to be
  end

  it 'has a source' do
    expect(article.source).to be
  end

  it 'has an array of images ' do
    expect(article.images).to have(2).items
  end
end
