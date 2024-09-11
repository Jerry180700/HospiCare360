class Bed < ApplicationRecord
  belongs_to :patient

  validates :created_at, presence: true
  validates :updated_at, presence: true
end
