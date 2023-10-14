class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :siret
      t.string :naf
      t.string :address
      t.string :license_number
      t.timestamps
    end
  end
end
