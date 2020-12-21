Rails.application.routes.draw do
  root 'homes#index'
  get 'presenties/find_by_date'
  get 'presenties/presenty_by_date'
  get 'students/myinfo'
  get 'students/fees'
  resources :students
  resources :presenties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end