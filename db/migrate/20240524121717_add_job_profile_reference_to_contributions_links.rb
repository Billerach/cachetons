class AddJobProfileReferenceToContributionsLinks < ActiveRecord::Migration[7.0]
  def change
    add_reference :contributions_links, :job_profile, foreign_key: true
  end
end
