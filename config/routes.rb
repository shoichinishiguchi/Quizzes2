Rails.application.routes.draw do

  root 'quizzes#index'
  get  'quizzes' => 'quizzes#new'
  post 'quizzes' => 'quizzes#create'


end
