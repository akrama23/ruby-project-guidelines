require 'bundler'
Bundler.require
require 'json'
require 'rest-client'


ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3', 
    database: 'db/development.db'
    )

require_all 'lib'

PROMPT = TTY::Prompt.new 

ActiveRecord::Base.logger = nil