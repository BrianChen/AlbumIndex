class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false

      t.timestamps
    end
  end

  add_index :albums, :title
end
