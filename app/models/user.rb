class User < ApplicationRecord
    has_many :users_events
    has_many :events through: :users_events
    has_many :creator, class_name: 'User'
end
