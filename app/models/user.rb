# rubocop : disable Layout/EndOfLine

class User < ApplicationRecord
  has_many :created_events, foreign_key: :user_id, class_name: 'Event'
  has_many :attended_events, foreign_key: :user_id, class_name: 'EventUser'
  has_many :events, through: :event_users
end

# rubocop : enable Layout/EndOfLine
