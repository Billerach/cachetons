class AddCompanyLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :company_links do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end
