class Performance < ApplicationRecord
  belongs_to :company
  has_many :payslips, dependent: :destroy
end
