namespace :db do
  desc "Erase and fill database"

  task :populate => :environment do
    [Site, Page, Feed, Article].each(&:delete_all)

    Site.create!(name: 'Tapir CMS', description: 'Tapir CMS Demo Site', theme: 'blue')
    frame = Frame.first
    page = Page.create!(title: 'Tapir CMS',
                        description: 'Tapir CMS Landing Page',
                       frame: frame)
    feed = Feeds::TapirFeed.create!()
    frame.blocks.each do |block|
      pp block.name, block.puffs
      page.entries << PageEntry.new(block: block, feed: feed)
    end
    page.save!
    page.entries.each do |entry|
      pp entry.block.name, entry.block.puffs
    end
  end

end
