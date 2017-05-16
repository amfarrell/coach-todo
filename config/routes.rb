require './app/routes/hello_world.rb'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "/hello/:person",
        to: Coach::Handler.new(Routes::HelloWorld),
        via: :get
end
