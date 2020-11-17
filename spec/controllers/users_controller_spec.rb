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
    end

    describe "GET show" do
      before(:example) do
        get :show
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end

      it "has a 200 status code" do
        expect(response.status).to eq(200)
      end
    end


end
