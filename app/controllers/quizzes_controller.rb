class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
  end


  def create
    Tweet.create(text: params[:text], image: params[:image], point: params[:point] user_id: 1, answer: params[:answer])
  end

end
