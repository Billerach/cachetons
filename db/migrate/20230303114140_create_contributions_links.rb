class CreateContributionsLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :contributions_links do |t|
      t.references :contribution, foreign_key: true
      t.references :payslip, foreign_key: true
      t.timestamps
    end
  end
end
