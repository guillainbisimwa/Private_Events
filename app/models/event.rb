class Event < ApplicationRecord
  belongs_to :user, foreign_key: :creator_id, class_name: 'User'
  has_many :attendee, foreign_key: :event_id, class_name: 'EventUser'

  scope :previous, -> { where('datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('datetime > ?', DateTime.now) }
end
