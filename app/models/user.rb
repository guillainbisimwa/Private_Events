class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attendee, foreign_key: :user_id, class_name: 'EventUser'
end
