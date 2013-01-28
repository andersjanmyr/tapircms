class Page
  include Mongoid::Document
  field :title, type: String
  field :description, type: String, default: name
  field :slug, type: String
  belongs_to :frame
  field :entries, type: Array, default: []

  def partial
    "/sites/frames/#{frame.template}"
  end

  def blocks
    entries.map do |block_name, feed_name|
      block = Block.where(name: block_name).first
      feed = Feed.where(name: feed_name).first
      PageEntry.new(block, feed)
    end
  end

  def add_entry block_name, feed_name
    entries <<  [block_name, feed_name]
  end
end
