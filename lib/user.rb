class User < ActiveRecord::Base 
    has_many :playlists
    has_many :songplaylists, through: :playlists
    has_many :songs, through: :songplaylists
end 