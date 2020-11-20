class User < ApplicationRecord
   has_many :creator, source: 'Event'
   has_many :event_users, foreign_key: :user_id
   has_many :events, through: :event_users
end
