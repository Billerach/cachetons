# frozen_string_literal: true
class JobProfilesToContributionsLink < ApplicationRecord
  belongs_to :job_profile
  belongs_to :contribution
end
