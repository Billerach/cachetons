class Employee < ApplicationRecord
  has_many :payslips
  belongs_to :company

  validates :firstname,         presence: true
  validates :lastname,          presence: true
  validates :address,           presence: true
  validates :phone,             presence: true
  validates :NIR,               presence: true
  validates :date_of_birth,     presence: true
  validates :place_of_birth,    presence: true
  validates :country_of_birth,  presence: true
  validates :company,           presence: true

  def lastname_with_firstname
    "#{firstname} #{lastname}"
  end
end
