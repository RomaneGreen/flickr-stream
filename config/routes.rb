Rails.application.routes.draw do

   root 'static_pages#home'


  post '/' ,to:'static_pages#url'

  resources :staticpages
end
