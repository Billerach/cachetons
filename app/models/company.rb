class Company < ApplicationRecord
  has_many :payslips, dependent: :destroy
  has_many :employees
  has_many :performances, dependent: :destroy

  has_many :company_links, dependent: :destroy
  has_many :users, through: :company_links

  validates :name, presence: true, uniqueness: true
end
