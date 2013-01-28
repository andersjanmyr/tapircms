class Site
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :stylesheet, type: String, default: 'application'
  field :javascript, type: String, default: 'application'
  field :theme, type: String
end
