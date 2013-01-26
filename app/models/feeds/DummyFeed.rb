class DummyFeed < Feed

  def articles
    (1..10).map { |i| DummyArticle.new() }
  end
end
