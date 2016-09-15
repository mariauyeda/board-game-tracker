class CreateGametags < ActiveRecord::Migration[5.0]
  def change
    create_table :gametags do |t|
      t.references :tag, foreign_key: true
      t.references :game, foreign_key: true
      t.timestamps
    end
  end
end
