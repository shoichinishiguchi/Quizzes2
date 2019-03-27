Rails.application.routes.draw do

  devise_for :users
  root 'quizzes#index'
  get 'quizzes' => 'quizzes#index'
  get  'quizzes/new' => 'quizzes#new'
  post 'quizzes' => 'quizzes#create'


end

