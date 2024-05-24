class AddJobProfileReferenceToPayslips < ActiveRecord::Migration[7.0]
  def change
    add_reference :payslips, :job_profile, foreign_key: true
  end
end
