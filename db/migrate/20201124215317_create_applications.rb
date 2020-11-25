class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :company_name

      t.timestamps
    end
  end
end
