class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  
  validates :last_name, presence: true
  validates :first_name, presence: true 
  validates :name, presence: true
  validates :last_name_kana, presence: true
  validates :firtst_name_kana, presence: true
  validates :street_adress, presence: true
  validates :postal_code, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
end
