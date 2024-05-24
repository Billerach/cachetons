class ContributionsLink < ApplicationRecord
  belongs_to :job_profile
  belongs_to :contribution
end
