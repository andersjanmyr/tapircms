class Block
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: '_default'
  belongs_to :frame
  has_many :puffs
end
