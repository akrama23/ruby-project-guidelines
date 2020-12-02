User.destroy_all
Artist.destroy_all
Song.destroy_all 
Playlist.destroy_all
SongPlaylist.destroy_all



user1 = User.create(username: "Ebyan")
user2 = User.create(username: "Akram")
user3 = User.create(username: "Bobby")
user4 = User.create(username: "Dough")

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
artist12 = Artist.create(name: "Drake")
artist13 = Artist.create(name: "Slipknot")#heavymetal
artist14 = Artist.create(name: "My Chemical Romance")
artist15 = Artist.create(name: "Ray Charles")#blues
artist16 = Artist.create(name: "Gary Clark Jr.")
artist17 = Artist.create(name: "Calivin Harris")#EDM
artist18 = Artist.create(name: "Diplo")
artist19 = Artist.create(name: "Cary Underwood")#country
artist20 = Artist.create(name: "Tim McGraw")

song1 = Song.create(name: "Under Enemy Arms" , artist_id: artist1.id)



playlist1 = Playlist.create(name: "Rock Music")
playlist1 = Playlist.create(name: "Jazz Music")
playlist1 = Playlist.create(name: "Pop Music")
playlist1 = Playlist.create(name: "Hip Hop Music")
playlist1 = Playlist.create(name: "Heavy Metal Music")
playlist1 = Playlist.create(name: "Country Music")
playlist1 = Playlist.create(name: "Rap Music")
playlist1 = Playlist.create(name: "Blues Music")
playlist1 = Playlist.create(name: "R&B Music")
playlist1 = Playlist.create(name: "EDM Music")


puts "Data seeded"