Rails.application.routes.draw do
  namespace :api do
  scope :v1 do
  mount_devise_token_auth_for 'User', at: 'auth',
   controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
end 
end
