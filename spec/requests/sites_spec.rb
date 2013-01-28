require 'spec_helper'

describe "Sites" do
  let!(:site) do
    Site.create!(name: 'Tapir', description: 'Tapir Desc')
  end

  let!(:frame) do
    Frame.create!(name: 'Tapir', description: 'Tapir Desc')
  end

  let!(:page) do
    Page.create!(name: 'Tapir', description: 'Tapir Desc', frame: frame)
  end
  describe "GET /sites" do
    it "works! (now write some real specs)" do
      get sites_path
      response.status.should be(200)
    end
  end
end
