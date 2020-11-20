class User < ApplicationRecord
   has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
   has_many :event_users, foreign_key: :user_id
   has_many :events, through: :event_users
end
