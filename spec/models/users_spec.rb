require 'rails_helper'

RSpec.describe User do

  describe 'Creating of User' do
    subject { User.create(first_name: "John") }

    it 'create new user' do
      expect { subject }.to change { User.count }.by(1)
    end

    it "confirms the name of the new user" do
      expect(subject.first_name).to eq("John")
    end

    it "fails for an invalid name for the new user" do
      expect(subject.first_name).to_not eq("Juan")
    end
  end
end