require 'rails_helper'

RSpec.describe UsersController do
    describe "GET new" do

      it "renders the new template" do
        get :new
        expect(response).to render_template("new")
      end

      it "renders the show template" do
        get :show
        expect(response).to render_template("show")
      end
    end
end
