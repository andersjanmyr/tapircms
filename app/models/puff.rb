class Puff
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: '_default'
  belongs_to :block
end
