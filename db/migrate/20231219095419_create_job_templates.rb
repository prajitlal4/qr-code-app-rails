class CreateJobTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :job_templates do |t|
      t.string :name
      t.text :fields
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
