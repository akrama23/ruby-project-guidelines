class User < ActiveRecord::Base 
    has_many :playlists
    has_many :songplaylists, through: :playlists
    has_many :songs, through: :songplaylists

    # def the_user
    #     User.all.select {|user| user.username == }
    # end 
end 