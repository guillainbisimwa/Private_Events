class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

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
