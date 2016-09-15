class CreateGametags < ActiveRecord::Migration[5.0]
  def change
    create_table :gametags do |t|
      t.integer :tag_id
      t.integer :game_id
      t.timestamps
    end
  end
end
