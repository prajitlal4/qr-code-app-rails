class Application < ApplicationRecord
  serialize :responses, JSON
  belongs_to :candidate
  belongs_to :job_posting

  before_create :set_default_status

  def set_default_status
    self.status ||= 'new'
  end
end
