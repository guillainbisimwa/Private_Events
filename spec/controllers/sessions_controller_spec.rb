require 'rails_helper'

RSpec.describe SessionsController do
  describe "GET login" do

    before(:example) do
      get :new
    end

    it "renders the login template" do
      expect(response).to render_template("new")
    end

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end

    it 'get request to login routes to new action in the sessions controller' do
      expect(:get => "login").to route_to("controller"=>"sessions", "action"=>"new")
    end
  end

  describe "POST new with first name" do
    before(:example) do
      @user = User.create(first_name: "anyname")
    end

    subject { post :create, :params => { :session => { :first_name => "anyname" } } }

    it "expect the media type to be text/html" do
      expect(subject.media_type).to eq "text/html"
    end

    it "redirects to users_path" do
      expect(subject).to redirect_to(users_path(@user))
    end
  end

  describe "POST new with id" do
    before(:example) do
      @user = User.create(id: 1)
    end

    subject { post :create, :params => { :session => { :number_field => 1 } } }

    it "expect the media type to be text/html" do
      expect(subject.media_type).to eq "text/html"
    end

    it "redirects to users_path" do
      expect(subject).to redirect_to(users_path(@user))
    end
  end

end