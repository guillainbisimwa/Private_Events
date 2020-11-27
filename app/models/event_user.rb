class EventUser < ApplicationRecord
  belongs_to :attendee, foreign_key: :user_id, class_name: 'User'
  belongs_to :attended_event, foreign_key: :event_id, class_name: 'Event'

  def search_user(user_id)
    User.find_by(id: user_id)
  end

  def search_event(event_id)
    Event.find_by(id: event_id)
  end

  def self.past
    where('datetime < ?', DateTime.now)
  end

  def self.future
    where('datetime > ?', DateTime.now)
  end
end
