Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'questions/new' => 'questions#new'
  post '/questions' => 'questions#create'
  get '/questions' => 'questions#index'
  get '/questions/:id' => 'questions#show', as: 'question'
  get '/questions/:id/edit' => 'questions#edit', as: 'edit_question'
  patch '/questions/:id' => 'questions#update', as: 'update_question'

  delete '/questions/:id' => 'questions#destroy', as: 'destroy_question'
  get 'questions/test/test' => 'questions#test' 

  root 'test#top'
  get 'test/n1'  => 'test#n1'
  get 'test/n2'  => 'test#n2'
  get 'test/n3'  => 'test#n3'
  get 'test/n4'  => 'test#n4'
  get 'test/n5'  => 'test#n5'
end
