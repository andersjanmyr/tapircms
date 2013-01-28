class Frame
  include Mongoid::Document
  field :name, type: String
  field :template, type: String, default: 'default'
  field :block_names, type: Array

  def blocks
    block_names.map { |name| Block.where(name: name).first }
  end

end
