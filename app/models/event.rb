class Event < ApplicationRecord
    has_many :users_events
    has_many :users, through: :users_events
    belongs_to :creators, class_name: 'User'
end
