class Event < ApplicationRecord
  belongs_to :creator_id, foreign_key: :creator, class_name: 'User'
  has_many :attendees, foreign_key: :event_id, class_name: 'EventUser'
  has_many :users, through: :event_users

  scope :datetimepast, -> { where('datetime < ?', DateTime.now) }
  scope :datetimefuture, -> { where('datetime > ?', DateTime.now) }

  # scope :datetimebigger, -> { where('datetime > ?', DateTime.now)}

  # def self.past
  #   where('datetime < ?', DateTime.now)
  # end

  # def self.future
  #   where('datetime > ?', DateTime.now)
  # end
end
