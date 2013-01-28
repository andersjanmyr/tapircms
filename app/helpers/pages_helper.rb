module PagesHelper
  def render_blocks entries
    safe_join(entries.map do |entry|
      render_block entry
    end)
  end

  def render_block entry
    render partial: entry.block.partial, locals: {block: entry.block, feed: entry.feed}
  end


  def render_puffs puffs, feed
    articles = feed.articles
    safe_join(puffs.zip(articles).map do |puff, article|
      render_puff puff, article
    end)
  end

  def render_puff puff, article
    render partial: puff.partial, locals: {puff: puff, article: article}
  end

end
