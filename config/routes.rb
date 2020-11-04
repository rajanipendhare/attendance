Rails.application.routes.draw do
  # root 'students#index'
  root 'students#index'
  get 'students/new'
  get 'students/edit'
  get 'students/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
