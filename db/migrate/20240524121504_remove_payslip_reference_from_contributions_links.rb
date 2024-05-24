class RemovePayslipReferenceFromContributionsLinks < ActiveRecord::Migration[7.0]
  def change
    remove_column :contributions_links, :payslip_id
  end
end
