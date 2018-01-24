                  Prefix Verb   URI Pattern                    Controller#Action
              days_index GET    /days/index(.:format)          days#index
               days_edit GET    /days/edit(.:format)           days#edit
               days_show GET    /days/show(.:format)           days#show
             days_create GET    /days/create(.:format)         days#create
             days_update GET    /days/update(.:format)         days#update
            days_destroy GET    /days/destroy(.:format)        days#destroy
        new_user_session GET    /users/sign_in(.:format)       users/sessions#new
            user_session POST   /users/sign_in(.:format)       users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
           user_password POST   /users/password(.:format)      devise/passwords#create
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                         PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
       user_registration POST   /users(.:format)               users/registrations#create
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
                         PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
               exercises GET    /exercises(.:format)           exercises#index
                         POST   /exercises(.:format)           exercises#create
            new_exercise GET    /exercises/new(.:format)       exercises#new
           edit_exercise GET    /exercises/:id/edit(.:format)  exercises#edit
                exercise GET    /exercises/:id(.:format)       exercises#show
                         PATCH  /exercises/:id(.:format)       exercises#update
                         PUT    /exercises/:id(.:format)       exercises#update
                         DELETE /exercises/:id(.:format)       exercises#destroy
                    root GET    /                              home#index
