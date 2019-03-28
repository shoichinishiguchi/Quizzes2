class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :quizzes

def self.rank(rank)
  User.order('score DESC')[rank-1]
end
#任意の順位のユーザーを取り出す。

def rank_of(user)
  ranking = User.order('score DESC')
  return  ranking.index(user)+1
end
# なぜか、上のメソッドができない。@ranking = User.order('score DESC')がエラーに。



end
