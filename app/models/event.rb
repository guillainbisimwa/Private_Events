class Event < ApplicationRecord
  belongs_to :user
  alias_attribute :creator, :user
  has_many :attendees, foreign_key: :event_id, class_name: 'EventUser'
  has_many :users, through: :event_users

  scope :datetimepast, -> { where('datetime < ?', DateTime.now) }
  scope :datetimefuture, -> { where('datetime > ?', DateTime.now) }

  # def self.past
  #   where('datetime < ?', DateTime.now)
  # end

  # def self.future
  #   where('datetime > ?', DateTime.now)
  # end
end
