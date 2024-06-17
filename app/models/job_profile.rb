# frozen_string_literal: true

# This class represents the payslips templates loaded by the user, so that he doesn't have to select each contribution
# by hand. They contain two booleans : 'artist' and 'executive' and are associated with their contributions via a
# join table : job_profiles_to_contribution_links

class JobProfile < ApplicationRecord
  belongs_to :user
  has_many :job_profiles_to_contribution_links
  has_many :contributions, through: :job_profiles_to_contribution_links

   # TODO: validations
end
