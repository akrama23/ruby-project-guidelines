class MusicApp

    attr_accessor :user

    def run 
        welcome
        user

        ## call all the app methods in here
    end 

    def welcome 
        puts "###### Hello & Welcome ######"
        puts "###This is the Music App###"
        puts "##You can see list of Songs and their Artists##"   
    end 
        #user method ask user "enter your name" 
        #@user = User.find_or_create_by(username: userinput)
    def user 
        puts "#### Please Enter Your Name To Start ####"
        username = gets.chomp.downcase 
        @username = User.find_or_create_by(username: username)
        sleep(1)
        puts "Welcome #{@username.username.capitalize}"
    end 

    


end 