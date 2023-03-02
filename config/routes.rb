Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'book/list' , to:"book#list"
  get 'book/show/:id' , to:"book#show"
  get 'book/new' , to:"book#new"
end
