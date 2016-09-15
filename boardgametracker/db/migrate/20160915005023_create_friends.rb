class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.references :user, foreign_key: true
      t.timestamps
    end

    add_reference :users, :friend, references: :users
  end
end
