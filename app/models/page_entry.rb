class PageEntry
  include Mongoid::Document
  include ActsAsList::Mongoid

  embedded_in :page, :inverse_of => :entries
  belongs_to :block
  belongs_to :feed
end
