class Contribution < ApplicationRecord
  has_many :contributions_links, dependent: :destroy
  has_many :payslips, through: :contributions_links

  validates :fund,          presence: true
  validates :name,          presence: true
  validates :employee_part, presence: true
  validates :employer_part, presence: true
  validates :start_date,    presence: true
end
