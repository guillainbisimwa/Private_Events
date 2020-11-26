class Event < ApplicationRecord
  belongs_to :user
  alias_attribute :creator, :user
  has_many :attendees, foreign_key: :event_id, class_name: 'EventUser'
  has_many :users, through: :event_users

  scope :previous, -> { where('datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('datetime > ?', DateTime.now) }
end
