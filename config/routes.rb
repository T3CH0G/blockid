Rails.application.routes.draw do
  devise_for :users
  resources :sections
  resources :checkins
  resources :professors
  resources :students
  get '/prof/:id', to: 'main#prof', as: 'prof'
  get'/stud/:id', to: 'main#stud', as: 'stud'
  get '/post/:student_id/:section_id' , to:"main#post"

  root to: 'main#splash'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
