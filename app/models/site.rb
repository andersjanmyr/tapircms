class Site
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :stylesheet, type: String, default: name
  field :javascript, type: String, default: name
  field :theme, type: String
end
