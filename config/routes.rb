Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "/hello_world",
        to: Coach::Handler.new(HelloWorld),
        via: :get
end
