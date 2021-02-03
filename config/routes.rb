Rails.application.routes.draw do
  get '/confessions' => 'confessions#index'
  get '/confessions/new' => 'confessions#new'
  post '/confessions' => 'confessions#create', as: 'confessions_create'
  get '/confessions/:id' => 'confessions#show', as: 'confession'
  get '/confessions/:id/edit' => 'confessions#edit', as: 'confessions_edit'
  patch '/confessions/:id' => 'confessions#update'
  delete '/confessions/:id' => 'confessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
