require 'sinatra'

class User
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

users_map = {
    1 => User.new("Anwar", 22),
    2 => User.new("Luis", 23),
    3 => User.new("Ilse", 21)
}


get '/users' do 
    erb :index, locals: {users: users_map.values}
end

get '/users/:id' do 

end

post '/users' do

end

put '/users/:id' do

end

delete '/users/:id' do 

end 