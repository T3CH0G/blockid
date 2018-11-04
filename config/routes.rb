Rails.application.routes.draw do
  resources :messages
  devise_for :users
  resources :sections
  resources :checkins
  resources :professors
  resources :students
  get '/prof/:id', to: 'main#prof', as: 'prof'
  get'/stud/:id', to: 'main#stud', as: 'stud'
  get '/post/:student_id/:professor_id/:data' , to:"main#post"
  post '/main/refresh' , to: 'main#refresh'
  get '/main/refresh' , to: 'main#refresh'

  root to: 'main#splash'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
