class Frame
  include Mongoid::Document
  field :name, type: String
  field :template, type: String
  has_many :blocks
end
