class Page
  include Mongoid::Document
  field :name, type: String
  field :slug, type: String
  belongs_to :frame
  embeds_many :entries, class_name: 'PageEntry'
end
