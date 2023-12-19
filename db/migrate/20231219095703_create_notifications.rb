class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :job_posting, null: false, foreign_key: true
      t.text :message
      t.string :status
      t.string :notification_type

      t.timestamps
    end
  end
end
