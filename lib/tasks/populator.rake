namespace :db do
  desc "Erase and fill database"

  task :populate => :environment do
    [Site, Frame, Block, Puff, Page, Article].each(&:delete_all)

    Site.create!(name: 'Lorem', description: 'Lorem Demo Site', theme: 'blue')
    create_puffs
    frame = Frame.create!(name: 'mainframe', blocks: blocks)

    page = Page.create!(title: 'Lorem Landing Page',
                        description: 'Lorem landing page',
                       frame: frame)
    feed = Feed.create!(name: 'A feed')
    frame.blocks.each do |block|
      pp block.name, block.puffs
      page.entries << PageEntry.new(block: block, feed: feed)
    end
    page.save!
    page.entries.each do |entry|
      pp entry.block.name, entry.block.puffs
    end
  end

  def blocks
    block = Block.create!(name: 'two', puffs: [
      Puff.where(name: 'title_and_abstract').first,
      Puff.where(name: 'title_and_image').first
    ])

    [
      Block.create!(name: 'top', puffs: Puff.where(name: 'title')),
      Block.create!(name: 'main', puffs: Puff.where(name: 'title_and_image')),
      block
    ]
  end

  def create_puffs
    Puff.create!(name: 'title')
    Puff.create!(name: 'title_and_image')
    Puff.create!(name: 'title_and_abstract')
  end

end
