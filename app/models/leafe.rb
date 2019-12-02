class Leafe < ApplicationRecord
  belongs_to :employee
  enum status: [:Waiting, :Approved, :Denied]
  validates :description, presence:true
end
