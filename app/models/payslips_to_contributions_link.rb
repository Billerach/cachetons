class PayslipsToContributionsLink < ApplicationRecord
  belongs_to :payslip
  belongs_to :contribution
end
