class User < ApplicationRecord
  before_save {self.email=email.downcase}
  has_many :posts, dependent: :destroy 
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
