class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # before_commit :set_email_password

  has_one_attached :photo, dependent: :destroy
  has_one :doctor_specialty, dependent: :destroy
  has_one :specialty, through: :doctor_specialty, dependent: :destroy
  has_one :medical_resume, dependent: :destroy
  has_one :resume, through: :medical_resume, dependent: :destroy

  # private

  # def set_email_password
  #   self.email = "#{first_name.downcase}123@email.com"
  #   self.password = "123456"
  # end
end
