module PagesHelper
  def render_blocks entries
    safe_join(entries.map do |entry|
      render_block entry
    end)
  end

  def render_block entry
    puts entry
    render partial: entry.block.partial, locals: {block: entry.block, feed: entry.feed}
  end


  def render_puffs puffs, feed
    safe_join(puffs.map do |puff|
      render_puff puff, Article.new(title: 'Hello', abstract: 'World')
    end)
  end

  def render_puff puff, article
    puts puff
    render partial: puff.partial, locals: {puff: puff, article: article}
  end

end
