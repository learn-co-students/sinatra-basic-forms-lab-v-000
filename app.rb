require_relative 'config/environment'

class App < Sinatra::Base
get('/'){
  erb :index
}

get('/new'){
  erb :create_puppy
}
post('/puppy'){
  name = params[:name]
  age = params[:age]
  breed = params[:breed]
  @pup = Puppy.new(name, breed, age)
  
  erb :display_puppy
}

end


