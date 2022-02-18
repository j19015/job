class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_id,presence: true,uniqueness: true
  validates :birthday,presence: true
  validates :graduate,presence: true
  validates :name,presence: true
  has_many :company_infos, dependent: :destroy
  has_many :users, dependent: :destroy
end
