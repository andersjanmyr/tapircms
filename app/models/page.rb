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
    entries.map do |pair|
      block = Block.where(name: pair['block_name']).first
      feed = Feed.where(name: pair['feed_name']).first
      pp pair, block.name, feed.name
      PageEntry.new(block, feed)
    end
  end

  def add_entry block_name, feed_name
    entries << {block_name: block_name, feed_name: feed_name}
  end
end
