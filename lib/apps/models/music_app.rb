class MusicApp

    attr_accessor :user

    def run 
        system("clear")
        welcome
        user
        while main_menu != 'exit'
        end 

        end_of_app
        ## call all the app methods in here
    end 
    
    private 

    def welcome 
        puts "###### Hello & Welcome ######"
        sleep(1)
        puts "###This is the Music App###"
        sleep(1)
        puts "##You can see list of Songs and their Artists##"  
        sleep(1) 
    end 
        #user method ask user "enter your name" 
        #@user = User.find_or_create_by(username: userinput)
    def user 
        puts "#### Please Enter Your Name To Start ####"
        username = gets.chomp.downcase 
        @username = User.find_or_create_by(username: username)
        sleep(1)
        puts "Welcome #{@username.username.capitalize}, What would you like to view?"
        sleep(1)
    end 

    def main_menu
        PROMPT.select("What would you see?") do |menu|
            menu.choice "Choice A"
            menu.choice "Choice B"
            menu.choice "Choice C"
            menu.choice "Choice D"
        end 
    end 

    def end_of_app 
        puts "Thank you, Have a Good Day!"
    end 

end 