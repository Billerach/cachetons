class ContributionsLink < ApplicationRecord
  belongs_to :payslip
  belongs_to :contribution
end
