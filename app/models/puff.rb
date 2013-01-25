class Puff
  include Mongoid::Document
  field :name, type: String
  field :template, type: String
  belongs_to :block
end
