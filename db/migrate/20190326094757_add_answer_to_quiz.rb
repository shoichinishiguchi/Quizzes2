class AddAnswerToQuiz < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer, :text
  end
end
