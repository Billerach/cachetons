class AddSpecialtyToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :specialty, :string
  end
end
