Rails.application.routes.draw do
  root 'home#index'

  get 'about' => 'home#about'

  get 'home/index'

  post '/questions' => 'home#temp'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
