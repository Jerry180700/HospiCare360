class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_one :doctor_specialty
  has_one :specialty, through: :doctor_specialty
  has_one :medical_resume
  has_one :resume, through: :medical_resume
end
