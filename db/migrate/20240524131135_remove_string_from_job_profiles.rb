class RemoveStringFromJobProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_profiles, :string
  end
end
