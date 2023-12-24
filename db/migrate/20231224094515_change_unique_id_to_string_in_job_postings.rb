class ChangeUniqueIdToStringInJobPostings < ActiveRecord::Migration[7.0]
  def change
    change_column :job_postings, :unique_id, :string
  end
end
