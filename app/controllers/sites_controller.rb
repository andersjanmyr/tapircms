class SitesController < ApplicationController
  def index
    @page = Page.new(frame: Frame.new(template: 'default'))
  end
end
