require 'rails_helper'

RSpec.describe UsersController do
    describe "GET new" do

      it "renders the new template" do
        get :new
        expect(response).to render_template("new")
      end

      it "has a 200 status code" do
        get :new
        expect(response.status).to eq(200)
      end
    end

    describe "GET show" do
      it "renders the show template" do
        get :show
        expect(response).to render_template("show")
      end

      it "has a 200 status code" do
        get :show
        expect(response.status).to eq(200)
      end
    end
end
