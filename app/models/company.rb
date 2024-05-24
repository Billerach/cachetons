class Company < ApplicationRecord
  has_many :payslips
  has_many :employees
  has_many :performances

  has_many :company_links
  has_many :users, through: :company_links

  validates :name, presence: true, uniqueness: true
end
