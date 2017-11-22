class CreateAlbumSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :album_songs do |t|
      t.integer :song_id
      t.integer :album_id

      t.timestamps
    end
  end
end
