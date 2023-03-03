Rails.application.routes.draw do
  resources :users
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'book/list' , to:"book#list"
  get 'book/show/:id' , to:"book#show"
  get 'book/new' , to:"book#new"
  
  get 'login' , to:"session#new"
  post 'login' , to:"session#create"
  delete 'logout', to:"session#destroy"
  get 'show' , to:"users#show",as: :show
end
