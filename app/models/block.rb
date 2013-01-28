class Block
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  belongs_to :frame
  has_and_belongs_to_many :puffs

  def partial
    "/sites/blocks/#{template}"
  end
end
