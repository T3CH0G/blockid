Rails.application.routes.draw do
  devise_for :users
  resources :sections
  resources :checkins
  resources :professors
  resources :students
  get '/prof/:id', to: 'main#prof'
  get'/stud/:id', to: 'main#stud'
  root to: 'main#prof'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
