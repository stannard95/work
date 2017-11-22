Rails.application.routes.draw do

  resources :movies

  root "static#home"

end
