class Payslip < ApplicationRecord
  has_many :contributions, through: :job_profile
  belongs_to :employee
  belongs_to :performance
  belongs_to :company

  # TODO: validations
end
