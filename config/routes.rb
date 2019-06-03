Rails.application.routes.draw do
  root 'tasks#index'
  get 'tasks/index' => 'tasks#index'
  get 'tasks/show/:id' => 'tasks#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks/signup' => 'tasks#new'
  get '/tasks/edit' => 'tasks#edit'

  #以下を patch '/tasks/edit' => 'tasks#index'
  #から patch '/tasks/edit' => 'tasks#update'に変更している
  patch '/tasks/update' => 'tasks#update'
  post '/tasks/update' => 'tasks#update'
  post 'tasks/create' => 'tasks#create'
  get '/tasks/destroy' => 'tasks#destroy'
  delete '/tasks/destroy' => 'tasks#destroy'
end
