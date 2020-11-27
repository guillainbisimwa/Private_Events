require 'rails_helper'

RSpec.describe Event do
  describe 'Creating an Event' do
    let(:event) { Event.create(title: 'Party', datetime: '2020-21-11', location: "Microverse's Place") }

    it 'confirms the title of the new event' do
      expect(event.title).to eq('Party')
    end

    it 'fails for an invalid title for the new event' do
      expect(event.title).to_not eq('Study')
    end

    it 'confirms the datetime of the new event' do
      expect(event.datetime).to eq('2020-21-11')
    end

    it 'fails for an invalid datetime for the new event' do
      expect(event.datetime).to_not eq('2020-30-11')
    end

    it 'confirms the location of the new event' do
      expect(event.location).to eq("Microverse's Place")
    end

    it 'fails for an invalid datetime for the new event' do
      expect(event.datetime).to_not eq('Your House')
    end

    it 'should have many event_users' do
      t = Event.reflect_on_association(:attendee)
      expect(t.macro).to eq(:has_many)
    end

    it 'should belong to creator_id' do
      expect { Event belong_to(:user) }
    end
  end
end
