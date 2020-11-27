class RemoveForeignKeyConstraint < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :events, :creators
  end
end
