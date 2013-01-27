class Puff
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  belongs_to :block
end
