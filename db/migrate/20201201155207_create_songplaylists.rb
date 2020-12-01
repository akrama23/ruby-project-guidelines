class CreateSongplaylists < ActiveRecord::Migration[6.0]
  
  
  def change
    create_table :songplaylists do |t|
      t.integer :song_id
      t.integer :playlist_id
    end 
  end
end
