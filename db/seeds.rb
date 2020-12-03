User.destroy_all
Artist.destroy_all
Song.destroy_all 
Playlist.destroy_all
SongPlaylist.destroy_all



user1 = User.create(username: "Ebyan")
user2 = User.create(username: "Akram")
user3 = User.create(username: "Bobby")
user4 = User.create(username: "Doug")

artist1 = Artist.create(name: "Trippy Red")#rap
artist2 = Artist.create(name: "Akon")#R&B
artist3 = Artist.create(name: "Ariana Grande")#POP
artist4 = Artist.create(name: "The Beatles")#rock
artist5 = Artist.create(name: "The Rolling Stones")#rock
artist6 = Artist.create(name: "Beyoncé")#R&B
artist7 = Artist.create(name: "Lil Wayne")#rap
artist8 = Artist.create(name: "Britney Spears")#pop
artist9 = Artist.create(name: "Miles Davis")#Jazz
artist10 = Artist.create(name: "John Coltrane")
artist11 = Artist.create(name: "Jay-Z")#hip-hop
artist12 = Artist.create(name: "Drake")#hip-hop
artist13 = Artist.create(name: "Slipknot")#heavymetal
artist14 = Artist.create(name: "My Chemical Romance")#heavymetal
artist15 = Artist.create(name: "Ray Charles")#blues
artist16 = Artist.create(name: "Gary Clark Jr.")#blues~
artist17 = Artist.create(name: "Calivin Harris")#EDM
artist18 = Artist.create(name: "Diplo")#EDM
artist19 = Artist.create(name: "Cary Underwood")#country
artist20 = Artist.create(name: "Tim McGraw")#country



playlist1 = Playlist.create(name: "Rock Music", user_id: user1.id)
playlist2 = Playlist.create(name: "Jazz Music", user_id: user1.id)
playlist3 = Playlist.create(name: "Pop Music", user_id: user2.id)
playlist4 = Playlist.create(name: "Hip Hop Music", user_id: user2.id)
playlist5 = Playlist.create(name: "Heavy Metal Music", user_id: user3.id)
playlist6 = Playlist.create(name: "Country Music", user_id: user3.id)
playlist7 = Playlist.create(name: "Rap Music", user_id: user4.id)
playlist8 = Playlist.create(name: "Blues Music", user_id: user4.id)
playlist9 = Playlist.create(name: "R&B Music", user_id: user1.id)
playlist10 = Playlist.create(name: "EDM Music", user_id: user2.id)


song1 = Song.create(name: "Under Enemy Arms" , artist_id: artist1.id)
song2 = Song.create(name: "Locked Up" , artist_id: artist2.id)
song3 = Song.create(name: "Positions" , artist_id: artist3.id)
song4 = Song.create(name: "Penny Lane" , artist_id: artist4.id)
song5 = Song.create(name: "Satisfaction" , artist_id: artist5.id)
song6 = Song.create(name: "Drunk In Love" , artist_id: artist6.id)
song7 = Song.create(name: "A Milli" , artist_id: artist7.id)
song8 = Song.create(name: "Toxic" , artist_id: artist8.id)
song9 = Song.create(name: "Bye Bye Blackbird" , artist_id: artist9.id)
song10 = Song.create(name: "A Love Supreme" , artist_id: artist10.id)
song11 = Song.create(name: "99 Problems" , artist_id: artist11.id)
song12 = Song.create(name: "6 God" , artist_id: artist12.id)
song13 = Song.create(name: "Unsainted" , artist_id: artist13.id)
song14 = Song.create(name: "Helena" , artist_id: artist14.id)
song15 = Song.create(name: "I Got A Woman" , artist_id: artist15.id)
song16 = Song.create(name: "Come Together" , artist_id: artist16.id)
song17 = Song.create(name: "This Is What You Came For" , artist_id: artist17.id)
song18 = Song.create(name: "Lonely" , artist_id: artist18.id)
song19 = Song.create(name: "Before He Cheats" , artist_id: artist19.id)
song20 = Song.create(name: "Don't Take The Girl" , artist_id: artist20.id)
song21 = Song.create(name: "Weeee" , artist_id: artist1.id)
song22 = Song.create(name: "Right Now (Na Na Na)" , artist_id: artist2.id)
song23 = Song.create(name: "Get Well Soon" , artist_id: artist3.id)
song24 = Song.create(name: "Strawberry Fields" , artist_id: artist4.id)
song25 = Song.create(name: "Paint It Black" , artist_id: artist5.id)
song26 = Song.create(name: "Crazy In Love" , artist_id: artist6.id)
song27 = Song.create(name: "3 Peat" , artist_id: artist7.id)
song28 = Song.create(name: "Stronger" , artist_id: artist8.id)
song29 = Song.create(name: "So What" , artist_id: artist9.id)
song30 = Song.create(name: "Giant Steps" , artist_id: artist10.id)
song31 = Song.create(name: "Song Cry" , artist_id: artist11.id)
song32 = Song.create(name: "6 Man" , artist_id: artist12.id)
song33 = Song.create(name: "Psychosocial" , artist_id: artist13.id)
song34 = Song.create(name: "Welcome to the Black Parade" , artist_id: artist14.id)
song35 = Song.create(name: "Georgia On My Mind" , artist_id: artist15.id)
song36 = Song.create(name: "Bright Lights" , artist_id: artist16.id)
song37 = Song.create(name: "I Need Your Love" , artist_id: artist17.id)
song38 = Song.create(name: "Genius" , artist_id: artist18.id)
song39 = Song.create(name: "Jesus Take The Wheel" , artist_id: artist19.id)
song40 = Song.create(name: "It's Your Love" , artist_id: artist20.id)

songplaylist1 = SongPlaylist.create(song_id: song1.id, playlist_id: playlist7.id )
songplaylist2 = SongPlaylist.create(song_id: song2.id, playlist_id: playlist9.id )
songplaylist3 = SongPlaylist.create(song_id: song3.id, playlist_id: playlist3.id )
songplaylist4 = SongPlaylist.create(song_id: song4.id, playlist_id: playlist1.id )
songplaylist5 = SongPlaylist.create(song_id: song5.id, playlist_id: playlist1.id )
songplaylist6 = SongPlaylist.create(song_id: song6.id, playlist_id: playlist9.id )
songplaylist7 = SongPlaylist.create(song_id: song7.id, playlist_id: playlist7.id )
songplaylist8 = SongPlaylist.create(song_id: song8.id, playlist_id: playlist3.id )
songplaylist9 = SongPlaylist.create(song_id: song9.id, playlist_id: playlist2.id )
songplaylist10 = SongPlaylist.create(song_id: song10.id, playlist_id: playlist2.id )
songplaylist11 = SongPlaylist.create(song_id: song11.id, playlist_id: playlist4.id )
songplaylist12 = SongPlaylist.create(song_id: song12.id, playlist_id: playlist4.id )
songplaylist13 = SongPlaylist.create(song_id: song13.id, playlist_id: playlist5.id )
songplaylist14 = SongPlaylist.create(song_id: song14.id, playlist_id: playlist5.id )
songplaylist15 = SongPlaylist.create(song_id: song15.id, playlist_id: playlist8.id )
songplaylist16 = SongPlaylist.create(song_id: song16.id, playlist_id: playlist8.id )
songplaylist17 = SongPlaylist.create(song_id: song17.id, playlist_id: playlist10.id )
songplaylist18 = SongPlaylist.create(song_id: song18.id, playlist_id: playlist10.id )
songplaylist19 = SongPlaylist.create(song_id: song19.id, playlist_id: playlist6.id )
songplaylist20 = SongPlaylist.create(song_id: song20.id, playlist_id: playlist6.id )
songplaylist21 = SongPlaylist.create(song_id: song21.id, playlist_id: playlist7.id )
songplaylist22 = SongPlaylist.create(song_id: song22.id, playlist_id: playlist9.id )
songplaylist23 = SongPlaylist.create(song_id: song23.id, playlist_id: playlist3.id )
songplaylist24 = SongPlaylist.create(song_id: song24.id, playlist_id: playlist1.id )
songplaylist25 = SongPlaylist.create(song_id: song25.id, playlist_id: playlist1.id )
songplaylist26 = SongPlaylist.create(song_id: song26.id, playlist_id: playlist9.id )
songplaylist27 = SongPlaylist.create(song_id: song27.id, playlist_id: playlist7.id )
songplaylist28 = SongPlaylist.create(song_id: song28.id, playlist_id: playlist3.id )
songplaylist29 = SongPlaylist.create(song_id: song29.id, playlist_id: playlist2.id )
songplaylist30 = SongPlaylist.create(song_id: song30.id, playlist_id: playlist2.id )
songplaylist31 = SongPlaylist.create(song_id: song31.id, playlist_id: playlist4.id )
songplaylist32 = SongPlaylist.create(song_id: song32.id, playlist_id: playlist4.id )
songplaylist33 = SongPlaylist.create(song_id: song33.id, playlist_id: playlist5.id )
songplaylist34 = SongPlaylist.create(song_id: song34.id, playlist_id: playlist5.id )
songplaylist35 = SongPlaylist.create(song_id: song35.id, playlist_id: playlist8.id )
songplaylist36 = SongPlaylist.create(song_id: song36.id, playlist_id: playlist8.id )
songplaylist37 = SongPlaylist.create(song_id: song37.id, playlist_id: playlist10.id )
songplaylist38 = SongPlaylist.create(song_id: song38.id, playlist_id: playlist10.id )
songplaylist39 = SongPlaylist.create(song_id: song39.id, playlist_id: playlist6.id )
songplaylist40 = SongPlaylist.create(song_id: song40.id, playlist_id: playlist6.id )

puts "Data seeded"