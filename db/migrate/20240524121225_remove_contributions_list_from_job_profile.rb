class RemoveContributionsListFromJobProfile < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_profiles, :contributions_list
  end
end
