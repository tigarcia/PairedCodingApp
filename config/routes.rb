Rails.application.routes.draw do

  #Index page is sites#index
  root 'sites#index'

  #Routes for devise
  devise_for :users

  #Routes for friendships
  resources :friendships

<<<<<<< HEAD
  #Route for the ajax get request to the other editor's document
  get '/documents', to: 'documents#index'
  #Route for the ajax put request to update the current_user's editor's document's text
  put '/documents', to: 'documents#update'
  #Route for running the code
  post '/documents', to: 'documents#run'

  #Route for the about us page 
=======
  get '/documents', to: 'documents#index'
  put '/documents', to: 'documents#update'

>>>>>>> updated controllers, models, views, and javascript to get editors working
  get '/about', to: 'sites#about'
  #Route for the contact us page
  get '/contact', to: 'sites#contact'

  get '/users/:id', to: 'users#show'

end
