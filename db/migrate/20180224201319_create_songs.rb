class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :artist_id, null: false,
      t.integer :album_id, default: nil

      t.timestamps
    end
  end

  add_index :songs, :artist_id
  add_index :songs, :album_id

  add_foreign_key :songs, :artists
  add_foreign_key :songs, :albums
end
