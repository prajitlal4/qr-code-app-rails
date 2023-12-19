class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :attachments do |t|
      t.references :candidate, null: false, foreign_key: true
      t.string :attachment_type
      t.text :metadata

      t.timestamps
    end
  end
end
