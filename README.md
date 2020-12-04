######## Command Line CRUD App ########

1. Access a Sqlite3 Database using ActiveRecord.
2. You should have a minimum of three models.
3. You should build out a CLI to give your user full CRUD ability for at least one of your resources. For example, build out a command line To-Do list. A user should be able to create a new to-do, see all todos, update a todo item, and delete a todo. Todos can be grouped into categories, so that a to-do has many categories and categories have many to-dos.
4. Use good OO design patterns. You should have separate classes for your models and CLI interface.
#############################################################################################################################################

######################Music App Overview:###############################
Create and customize playlists of your favorite artists and songs! View the playlists of other users, which includes the artists and songs they’re listening to. 
Click on an artist to see what other songs they have, as well as what other playlists they are included in. 
Delete songs, artists, playlists, or users. 
Installation Instructions:
- Fork and git clone the file down to your local environment 
- Cd into the app 
- Install, and after install do a 'bundle install' in terminal
- Do a ‘bundle update' to make sure all your gem files are up to date with the app
- Start the app with 'ruby bin/run.rb' in the terminal
Issues and Lessons:
We had trouble setting up tty-prompt at first, but with practice we learned how to do it. We added too many classes and didn't have enough time for all of the features we wanted our app to do, like creating a playlist, or creating songs and adding songs to playlist, and adding new artists to the artist list.
If we could do it differently, we would take out a class or two, so it would be easier to navigate though the seed data.
#############################################################################