class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.text :description
      t.decimal :salary
      t.string :status
      t.references :business, null: false, foreign_key: true
      t.references :job_template, null: false, foreign_key: true
      t.string :unique_id

      t.timestamps
    end
  end
end
