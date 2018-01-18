require_relative 'config/environment'
require_relative 'models/puppy.rb'   #this file directly links to our module that allows us to create a puppy classe in our form post below

#tests were not running correctly until i added the below requirements for capybara and capybbara/dsl
#   1) in the config directory, in environment.rb i had to hash (nil out) the #require_all 'models' then in app.rb   #require_relative 'models/puppy.rb' is necessary so the model directory, puppy.rb can communicate with the controller
#   2)in spec_helper.rb the following requirements had to be added so that the tests would run properly
        #require 'capybara'
        #require 'capybara/dsl'
#   3) spec directory in sinatr_basic_forms-lab_spec.rb, tests refer to   visit '/new', however the default file name for this page given when downloading the forked repo is called create_puppy.erb.  This file name had to be changed to new.erb


class App < Sinatra::Base
  get '/' do   #this is the homepage where teh controller receives a get request at '/'
    erb :index  #displays the index.erb file located in the views directory
  end
  get '/new' do
    erb :new
  end
  post '/display_puppy' do   #the action '/display_puppy' directly matches to the form action.  These must match to work
    #here, because above we require_relative access to our module for the puppy class, we can create an instance of a pupppy and save it as a instance variavl @pup.  This instance variable will be usable in the display_puppy.erb file in the views directory only because it is called below.  the variable will not be available unless it is directly written below
    @pup = Puppy.new(params[:name], params[:breed], params[:age])   #these params hash names are set from the textarea name in the form on the new.erb file located in the views directory
    erb :display_puppy   #this directs the user to the views directory erb file.  This erb file name must match the file name that you want viewed. It can be different than the action name above
  end
end


#OBJECTIVES
#Implement a POST request to the controllecr to display data from a user in the view
#Implement both POST and GET requests
#Connect a controller action with both a view and a model
#INSTRUCTIONS

#Build out a puppy class in models/puppy.rb. Puppies should have name, breed, and age attributes. You will need to be able to pass these three attributes to initialization, as well as readers and writers for the attributes.
#In app.rb build out a GET request to load a home page. The home page should go to the main route /.
#The home page will also need a new view index.erb. This page should welcome you to the Puppy Adoption Site. Add this view to the controller action.
#Now, we need to create a form for a user to list a new puppy that is available for adoption. You can create this form in views/create_puppy.erb. Remember, you'll need to set up another controller action for a user to be able to view this form in the browser. Another reminder: the "submit" button of a form is an <input> element with a type of "submit", not a <button> element.
#Now we need to make sure the form is being submitted properly. You'll need to have a third controller action that takes the input from the user and renders a third view (views/display_puppy.erb) which displays the info for the puppy that was just created.
#Add a link on the homepage to the new puppy form.
