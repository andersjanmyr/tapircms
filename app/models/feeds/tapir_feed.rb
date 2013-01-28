class Feeds::TapirFeed < Feed

  def articles
    (1..10).map { |i| Article.new(title: 'Tapirs Rule!', abstract: 'The world!', images: %w(tapir.png)) }
  end
end
