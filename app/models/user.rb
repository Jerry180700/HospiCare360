class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  enum role: { doctor: 'doctor', nurse: 'nurse', patient: 'patient' }

  validates :role, presence: true

  has_one_attached :photo

end
