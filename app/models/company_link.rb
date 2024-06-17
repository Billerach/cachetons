# frozen_string_literal: true

# This class represents the association between a company and a user
# It contains the user_id and the company_id
class CompanyLink < ApplicationRecord
  belongs_to :company
  belongs_to :user
end
