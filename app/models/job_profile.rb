class JobProfile < ApplicationRecord
  belongs_to :user
  has_many :payslips
  has_many :contributions_links
  has_many :contributions, through: :contributions_links

   # TODO: validations
end
