class MusicApp

    attr_accessor :user

    def run 
        sc
        welcome
        user
        while main_menu != 'exit'
        end 

        end_of_app
        ## call all the app methods in here
    end 


    

    def sc
        system("clear")
    end 

    def welcome 
        puts "###### Hello & Welcome ######"
        sleep(1)
        puts "###This is the Music App###"
        sleep(1)
        puts "##You can see list of Songs and their Artists##"  
        sleep(1) 
        sc
    end 
        #user method ask user "enter your name" 
        #@user = User.find_or_create_by(username: userinput)
    def user 
        puts "#### Please select from current users or create new user ####"
        
       user_option = PROMPT.select("select one of the options") do |menu|
            menu.choice "All Users"
            menu.choice "Find user by name"
            menu.choice "Create new user"
            menu.choice "Update user"
            menu.choice "Delete a user"
            end 
        if user_option == "All Users"
           all_users
        end 
        if user_option == "Create new user"
            create_user
        end  
        if user_option == "Find user by name"
            find_user_by_name
        end 
        if user_option == "Update user"
            all_users
         end 
        if user_option == "Delete a user"
            find_user_by_name
        end 
    end 

    def main_menu
        PROMPT.select("What would you see?") do |menu|


            # menu.choice "Choice A"
            # menu.choice "Choice B"
            # menu.choice "Choice C"
            # menu.choice "Choice D"
        end 
    end 

    def all_users
        sc
        user_input = PROMPT.select("select the user") do |menu|
            User.all.map {|user| menu.choice user.username}
        end 
        sc
        if User.find_by(username: user_input) 
         user_playlist = PROMPT.select(" #{user_input}'playlists, click to see songs") do |menu| 
             playlists = User.find_by(username: user_input).playlists.map {|playlist| playlist.name}
            playlists.map {|playlist| menu.choice playlist}
           
            end  
           sc
           if Playlist.find_by(name: user_playlist)
                user_songs = PROMPT.select(" #{user_input}'s #{user_playlist} playlist of songs, select to see the artist") do |menu|
                  userrr = Playlist.find_by(name: user_playlist).songs.map {|song| song.name}
                  userrr.map{|user| menu.choice user} 
                end 
           end 

           if Song.find_by(name: user_songs)

                user_artist = PROMPT.select("Would you like to see other songs by the artist?") do |menu|
                    
                     artist_name = Song.find_by(name: user_songs).artist.name
                   menu.choice artist_name
                   
                end
               if Artist.find_by(name: user_artist)
                
                  puts Artist.find_by(name: user_artist).songs.map {|song| song.name}
                    
                  
                  binding.pry
               end 
           end
        end 
    end 

    def find_user_by_name
        puts "please enter the name youre looking for:"
        user_by_name = gets.chomp.downcase
        user_by_name = user_by_name.capitalize
        @user = User.find_by(username: user_by_name)
        puts "now you can see #{@user.username}'s playlists"
    end 

    def create_user
        puts "please enter your name"
        user_chomp = gets.chomp.downcase
        user_chomp = user_chomp.capitalize
        User.create(username: user_chomp)
        puts "Welcome #{user_chomp}, would you like to create a playlist?"
    end 

    def end_of_app 
        puts "Thank you, Have a Good Day!"
    end 

end 