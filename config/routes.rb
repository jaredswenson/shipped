Rails.application.routes.draw do

  get 'days/index'

  get 'days/edit'

  get 'days/show'

  get 'days/create'

  get 'days/update'

  get 'days/destroy'

   devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
    
    resources :exercises
      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
