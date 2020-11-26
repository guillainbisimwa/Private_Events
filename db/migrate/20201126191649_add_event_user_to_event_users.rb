class AddEventUserToEventUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :event_users, :events_id
    add_index :event_users, :users_id
  end
end
