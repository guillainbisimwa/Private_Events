class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.references :user, null: false, foreign_key: true
      t.references :creator, references: :users, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
