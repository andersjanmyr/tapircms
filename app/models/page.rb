class Page
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :slug, type: String
  belongs_to :frame
  embeds_many :entries, class_name: 'PageEntry'

  def partial
    "/sites/frames/#{frame.template}"
  end

  def blocks
    entries
  end

end
