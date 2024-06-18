# This class represents the user of the application, i.e. a production manager,
# the person responsible for payroll management within one or more companies.
# It is the Devise class.
# It is associated with its companies via the company_links join table, and has several payslip templates (job_profiles).
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :company_links
  has_many :companies, through: :company_links
  has_many :job_profiles
end
