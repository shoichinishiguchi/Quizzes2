Rails.application.routes.draw do

  devise_for :users
    root 'quizzes#index'
  resources :quizzes do
   collection do
      post '/answer/:id' => 'quizzes#answer'
   end
  end
end

