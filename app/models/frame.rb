class Frame
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  has_many :blocks
end
