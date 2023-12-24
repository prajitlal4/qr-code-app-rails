class JobPosting < ApplicationRecord
  belongs_to :business
  belongs_to :job_template

  before_create :generate_unique_id

  private
  def generate_unique_id
    self.unique_id = SecureRandom.uuid
  end
end
