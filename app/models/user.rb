class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  
  validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/, message: "全角文字のみが使用できます" }
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶー一-龠]+\z/, message: "全角文字のみが使用できます" }
  validates :name, presence: true
  validates :last_name_kana, presence: true, format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/, message: "全角カタカナのみが使用できます" }
  validates :first_name_kana, presence: true, format: { with: /\A[ア-ン゛゜ァ-ォャ-ョー「」、]+\z/, message: "全角カタカナのみが使用できます" }
  validates :street_address, presence: true
  validates :postal_code, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
end
