class CreateJobProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :job_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, :string
      t.boolean :executive, default: false, null: false
      t.boolean :artist, default: false, null: false
      t.timestamps
    end
  end
end
