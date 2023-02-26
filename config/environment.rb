require 'bundler'
Bundler.require

# establish database connection
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
)

# load all files in the 'app' directory
Dir[File.join(File.dirname(__FILE__), '../app', '*.rb')].each { |f| require f }
