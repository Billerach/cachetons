class RemoveJobProfileFromPayslips < ActiveRecord::Migration[7.0]
  def change
    remove_column :payslips, :job_profile
  end
end
