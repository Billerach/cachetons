class Payslip < ApplicationRecord
  has_many :contributions_links, dependent: :destroy
  has_many :contributions, through: :contributions_links
  belongs_to :employee
  belongs_to :performance
  belongs_to :company

  # TODO: validations
end
