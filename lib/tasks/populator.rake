namespace :db do
  desc "Erase and fill database"

  task :populate => :environment do
    [Site, Page, Feed, Article].each(&:delete_all)

    Site.create!(name: 'Tapir CMS', description: 'Tapir CMS Demo Site', theme: 'blue')
    frame = Frame.first
    feed = Feeds::TapirFeed.create!(name: 'tapir')
    page = Page.create!(title: 'Tapir CMS',
                        description: 'Tapir CMS Landing Page',
                        frame: frame)
    frame.blocks.each do |block|
      pp block.name, block.puffs
      page.add_entry(block.name, feed.name)
    end
    page.save!
    page.blocks.each do |entry|
      pp entry.block.name, entry.block.puffs
    end
  end

end
