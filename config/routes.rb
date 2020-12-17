Rails.application.routes.draw do
  # get 'presenties/new'
  # get 'presenties/edit'
  # # root 'students#index'
  root 'homes#index'
  resources :students
  resources :presenties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end