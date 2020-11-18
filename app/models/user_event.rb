class UserEvent < ApplicationRecord
    bolongs_to :user
    bolongs_to :event
end