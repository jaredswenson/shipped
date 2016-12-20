Rails.application.routes.draw do

   devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }

   resources :boats
   resources :jobs

   post '/addingboats' => 'jobs#addboats'
      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
