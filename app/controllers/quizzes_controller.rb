class QuizzesController < ApplicationController


  def index
    @quizzes = Quiz.all
  end

  def new

  end


  def create
    Quiz.create(text: params[:text], image: params[:image], point: params[:point], user_id: current_user.id, answer: params[:answer])
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy if quiz.user_id == current_user.id
    redirect_to "/quizzes"
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

 private

end
