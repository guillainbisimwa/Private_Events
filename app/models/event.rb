class Event < ApplicationRecord
  belongs_to :user, foreign_key: :creator_id, class_name: 'User'
  has_many :attended_event, foreign_key: :event_id, class_name: 'EventUser'
  # has_many :users, through: :event_users

  scope :previous, -> { where('datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('datetime > ?', DateTime.now) }
end
