class Department < ApplicationRecord
    has_many :employees, dependent: :destroy
    validates :name, :short_name, presence:true
end
