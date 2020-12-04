
class MusicApp
    @@prompt = TTY::Prompt.new 
    attr_accessor :user

    def run 
        sc
        welcome
        user
       
        ## call all the app methods in here
    end 


    def sc
        system("clear")
    end 

    def welcome 
        puts "###################### Hello & Welcome #####################"
        sleep(1)
        puts "#################### This is the Music App ####################"
        sleep(1)
        puts "######### You can see list of Songs and their Artists #########"
        sleep(2)
        puts "###### You Can Start By Looking Through The Current Users ######"
        sleep(2)
        puts "### Then See Their Favorite Playlists & The Songs Within Them ###"
        sleep(2)
        puts "####### Then You'll See the Creative Artist Of The Song & #######"
        sleep(2)
        puts "####### Also See The List Of Other Music By That Artist ####### "
        sleep(2)
        puts "############ Or You Can Add Yourself To The Mix! #############"
        sleep(2)
        puts "#################### Have Fun & Enjoy ####################"
        sleep(2) 
        sc
    end 
        #user method ask user "enter your name" 
        #@user = User.find_or_create_by(username: userinput)
    def user 
        puts "#### Please Select From Current Users Or Create New User ####"
        sc
       user_option = @@prompt.select("select one of the options") do |menu|
            menu.choice "All Users"
            menu.choice "Create New User"
            menu.choice "Update Users Name"
            menu.choice "Delete A User"
            menu.choice "See A List Of All Songs"
            menu.choice "See A List Of All Playlists"
            menu.choice "See List Of All Artists"
            menu.choice "Exit MusicApp"
            end 
        if user_option == "All Users"
           all_users
       
        elsif user_option == "Create New User"
            create_user
         
        elsif user_option == "Update Users Name"
            update_user
        
        elsif user_option == "Delete A User"
            delete_user
       
        elsif user_option == "See A List Of All Songs"
            all_songs
       
        elsif user_option == "See A List Of All Playlists"
            all_playlists
       
        elsif user_option == "See List Of All Artists"
            all_artists
       
        else 
            end_of_app
        end 

    end 

    def all_users
        sc
        user_input = @@prompt.select("select the user") do |menu|
            User.all.map {|user| menu.choice user.username}
        end 
        sc
        if User.find_by(username: user_input) 
         user_playlist = @@prompt.select(" #{user_input}'playlists, click to see songs") do |menu| 
             playlists = User.find_by(username: user_input).playlists.map {|playlist| playlist.name}
            playlists.map {|playlist| menu.choice playlist}
           
            end  
           sc
           if Playlist.find_by(name: user_playlist)
                user_songs = @@prompt.select(" #{user_input}'s #{user_playlist} playlist of songs, select to see the artist") do |menu|
                  userrr = Playlist.find_by(name: user_playlist).songs.map {|song| song.name}
                  userrr.map{|user| menu.choice user} 
                end 
           end 

           if Song.find_by(name: user_songs)

                user_artist = @@prompt.select("Would you like to see other songs by the artist?") do |menu|
                    
                     artist_name = Song.find_by(name: user_songs).artist.name
                   menu.choice artist_name
                   
                end
               if Artist.find_by(name: user_artist)
                
                  Artist.find_by(name: user_artist).songs.map {|song| puts song.name}
                  sleep(6)
                    sc

              return_choice = @@prompt.select("return to the all user menu or return to #{user_input}' music playlists") do |menu|
                    menu.choice "Return to all user menu"

               end 
                    if return_choice = "Return to all user Menu"
                        user
                    end
                  
               
               end 
           end
        end 
    end 

    # def find_user_by_name
    #     puts "please enter the name youre looking for:"
    #     user_by_name = gets.chomp.downcase
    #     user_by_name = user_by_name.capitalize
    #     @user = User.find_by(username: user_by_name)
    #     puts "now you can see #{@user.username}'s playlists"
    # end 

    def create_user
        puts "Please Enter Your Name"
        user_chomp = gets.chomp.downcase
        user_chomp = user_chomp.capitalize
        User.create(username: user_chomp)
        puts "Welcome #{user_chomp}, You Now Are A User"
        puts ", You Can Now Look For Your Name"
        sleep(3)
        puts ">>>>>Redirecting To Main User page <<<<<<  .........."
        sleep(2)
        sc
        user
    end 

    def update_user
        sc
        user_input = @@prompt.select("Select The User") do |menu|
            User.all.map {|user| menu.choice user.username}
        end 
         if User.find_by(username: user_input)
            puts "Please Enter The New Name For The User :"
            
            new_name = gets.chomp.downcase
            new_name = new_name.capitalize
            current_name = User.find_by(username: user_input)
            current_name.update(username: new_name)

            puts "The New Name For The User Is: #{new_name}"
            puts ">>>>>Redirecting To Main User page <<<<<<  .........."
            sleep(4)
         end 
        user
    end 

    def delete_user
        sc
        user_input = @@prompt.select("Select The User You Want To Delete") do |menu|
            User.all.map {|user| menu.choice user.username}
        end 
        if User.find_by(username: user_input)
            puts "You Are Now Deleting >>>>>>> #{user_input} .........."
            picked_user = User.find_by(username: user_input)
            picked_user.destroy
            puts "Awesome, The User Has Been Deleted!"
            puts ">>>>>Redirecting To Main User page <<<<<<  .........."
            sleep(3)
        end 
        user
    end 

    def all_songs
        puts "----Here's A List Of Songs Currently In Our MusicApp-----"
        sleep(2)
        Song.all.each {|song| puts ">>> Song Name: #{song.name}, By: #{song.artist.name}"}
        puts ""
        puts ""
        puts ""
        puts ">>>>>Redirecting To Main User page <<<<<<  .........."
        sleep(5)
        user 
    end 

    def all_playlists
        puts "-----Here's A List Of All Of The Current Playlists In Our MusicApp-----"
        Playlist.all.each {|playlist| puts ">>>> Playlist: #{playlist.name}"}
        puts ""
        puts ""
        puts ""
        puts ">>>>>Redirecting To Main User page <<<<<<  .........."
        sleep(4)
        user
    end 

    def all_artists
        puts "--------Here's A List Of The Current Artist's In Our MusicApp-------"
        sleep(1)
        Artist.all.each {|artist| puts ">>>> Artist Or Band : #{artist.name}"}
        puts ""
        puts ""
        puts ""
        puts ">>>>>Redirecting To Main User page <<<<<<  .........."
        sleep(5)
        user 

    end 

    def end_of_app 
        puts "Thank you For Checking Out Our MusicApp, Have a Good Day :)"
        sleep(1)
        puts "The Collaborators For This MusicApp :"
        puts ">>>>>>> Ebyan Yusuf <<<<<<<"
        puts ">>>>>>> Akram Alam <<<<<<<"
        sleep(5)
    end 

end 