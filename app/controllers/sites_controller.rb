class SitesController < ApplicationController
  layout false

  def index
  end

  private
  helper_method :site, :page
  def site
    @site = Site.first
  end

  def page
    @page = Page.first
  end
end
