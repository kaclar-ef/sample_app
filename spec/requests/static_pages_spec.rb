require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  let(:base_title) {'Ruby on Rails Tutorial Sample App'}
  describe "GET /static_pages" do
    it "should get root" do
      get root_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("<title>Home | #{base_title}</title>")
    end

    it "should get home" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("<title>Home | #{base_title}</title>")
    end

    it "should get help" do
      get static_pages_help_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("<title>Help | #{base_title}</title>")
    end
    it "should get about" do
      get static_pages_about_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("<title>About | #{base_title}</title>")
    end
    it "should get contact" do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("<title>Contact | #{base_title}</title>")
    end
  end
end
