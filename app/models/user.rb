class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo, dependent: :destroy
  has_one :doctor_specialty, dependent: :destroy
  has_one :specialty, through: :doctor_specialty, dependent: :destroy
  has_one :medical_resume, dependent: :destroy
  has_one :resume, through: :medical_resume, dependent: :destroy
end
