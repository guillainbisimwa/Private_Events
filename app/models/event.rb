class Event < ApplicationRecord
    belongs_to :creator_id, foreign_key: :creator, class_name: 'User'
    has_many :event_users, foreign_key: :event_id
    has_many :users, through: :event_users
end
