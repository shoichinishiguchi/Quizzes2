class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :text
      t.text :image
      t.integer :point
      t.integer :user_id
      t.timestamps
    end
  end
end
