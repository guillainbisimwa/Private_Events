class AddEventUserRelations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :event_users, :events, column: :event_id
    add_foreign_key :event_users, :users, column: :user_id
  end
end
