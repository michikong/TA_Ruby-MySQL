require 'sinatra'
require 'mysql2'

get '/' do
  client = Mysql2::Client.new(host: 'localhost', username: 'root', database: 'booklist', encoding: 'utf8')
  erb :booklist
end

post '/' do
  erb :booklist
end