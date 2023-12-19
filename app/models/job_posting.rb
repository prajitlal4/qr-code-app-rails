class JobPosting < ApplicationRecord
  belongs_to :business
  belongs_to :job_template
end
