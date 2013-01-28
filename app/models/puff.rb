class Puff
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  has_and_belongs_to_many :blocks

  def partial
    "/sites/puffs/#{template}"
  end
end
