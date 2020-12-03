class User < ActiveRecord::Base 
    has_many :playlists
    has_many :song_playlists, through: :playlists
    has_many :songs, through: :song_playlists

    # def the_user
    #     User.all.select {|user| user.username == }
    # end 
end 