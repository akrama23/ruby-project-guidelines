class Playlist < ActiveRecord::Base 
    has_many :songplaylists
    has_many :songs, through: :songplaylists
end 