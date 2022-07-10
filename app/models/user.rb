class User < ApplicationRecord
  # Um usuário tem vários posts
  has_many :posts

  # Um post pode ter mais de um usuário
  belongs_to :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
