class Song < ActiveRecord::Base 
    has_many :song_playlists
    has_many :playlists, through: :song_playlists
    belongs_to :artist
end 