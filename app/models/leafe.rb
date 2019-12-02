class Leafe < ApplicationRecord
  belongs_to :employee
  enum status: [:Waiting, :Approved, :Denied]
  validates :description, :leave_type, presence:true
end
