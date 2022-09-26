Rails.application.routes.draw do
 
  resources :doctors
  resources :doctorpatients, only: [:destroy]

end
