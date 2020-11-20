require 'rails_helper'

RSpec.describe UsersController do
    describe "GET new" do

      before(:example) do
        get :new
      end

      it "renders the new template" do
        expect(response).to render_template("new")
      end

      it "has a 200 status code" do
        expect(response.status).to eq(200)
      end

      it 'get request to users/new routes to new action in the users controller' do
        expect(:get => "users/new").to route_to("controller"=>"users", "action"=>"new")
      end
    end
    
    describe "POST new" do
      subject { post :create, :params => { :user => { :first_name => "Any Name" } } }

      it "expect the media type to be text/html" do
        expect(subject.media_type).to eq "text/html"
      end

      it "redirects to users_path" do
        expect(subject).to redirect_to(users_path)
      end
    end
end
