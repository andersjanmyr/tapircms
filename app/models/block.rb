class Block
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  field :puff_names, type: Array, default: []

  def partial
    "/sites/blocks/#{template}"
  end

  def puffs
    puff_names.map { |name| Puff.where(name: name).first }
  end
end
