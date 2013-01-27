class SitesController < ApplicationController
  def index
  end

  private
  helper_method :site, :page
  def site
    @site = Site.first
  end

  def page
    @page = Page.new(frame: Frame.new(template: 'default'))
  end
end
