require 'rails_helper'

describe ::Retort::RetortsController do
  routes { ::Retort::Engine.routes }

  before do
    SiteSetting.load_settings(File.join(Rails.root, 'plugins', 'retort', 'config', 'settings.yml'))
  end

  describe "index" do
    it "returns a list retorts for a post" do
      xhr :get, :index
    end

    it "returns a list of retorts for a topic" do
    end
  end

  describe "update" do
    it "updates a retort" do
    end
  end

  describe "destroy" do
    it "destroys a retort"
  end

  def response_json
    JSON.parse(response.body)
  end

end
