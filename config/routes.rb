Rails.application.routes.draw do

  QualifyDish::Application.routes.draw do
    match 'hello' => 'hello_world#index', via: 'get'
    #match 'hello', controller: 'restaurants', action: 'index', via: 'get'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
