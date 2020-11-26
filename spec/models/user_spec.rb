require 'rails_helper'

RSpec.describe User do
  describe 'Creating of User' do
    subject { User.create(first_name: 'John') }

    it 'confirms count of users increase by 1' do
      expect { subject }.to change { User.count }.by(1)
    end

    it 'confirms the name of the new user' do
      expect(subject.first_name).to eq('John')
    end

    it 'fails for an invalid name for the new user' do
      expect(subject.first_name).to_not eq('Juan')
    end

    it 'should have many created_events' do
      t = User.reflect_on_association(:created_events)
      expect(t.macro).to eq(:has_many)
    end

    it 'should have many event_users' do
      t = User.reflect_on_association(:attended_events)
      expect(t.macro).to eq(:has_many)
    end
  end
end
