class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :job_posting, null: false, foreign_key: true
      t.text :responses
      t.string :status

      t.timestamps
    end
  end
end
