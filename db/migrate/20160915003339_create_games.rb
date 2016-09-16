class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :bggid
      t.text :description
      t.string :thumbnail
      t.timestamps
    end
  end
end
