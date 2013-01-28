class Puff
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'

  def partial
    "/sites/puffs/#{template}"
  end
end
