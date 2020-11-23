class User < ApplicationRecord
   has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
   has_many :attended_event, foreign_key: :user_id, class_name: 'EventUser'
   has_many :events, through: :event_users
end
