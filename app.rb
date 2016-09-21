require 'sinatra'
require 'pg'

db_params = {
   host: ENV['db'],
   port:ENV['port'],
   dbname:ENV['dbname'],
   user:ENV['user'],
   password:ENV['password'],    
}
load "./local_env.rb" if File.exists?("./local_env.rb")

db = PG::Connection.new(db_params)

get '/'do 
	erb :index
end
