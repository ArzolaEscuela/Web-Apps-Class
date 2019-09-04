require 'sinatra'

class User
    @@ids_count = 3

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end


    def self.incr()
        @@ids_count = @@ids_count + 1
    end
end


users_map = {
    1 => User.new("Anwar", 22),
    2 => User.new("Luis", 23),
    3 => User.new("Ilse", 21)
}


get '/users' do 
    erb :index, locals: { users: users_map.values}
end

get '/users/:id' do 
    erb :show, locals: { user: users_map[params['id'].to_i] }
end

get '/users-new' do
    erb :new
end

post '/users' do
    user = User.new(params['name'], params['age'])
    users_map[User.incr()] = user
    erb :show, locals: {user: user}
end

put '/users/:id' do

end

delete '/users/:id' do 

end 