class Notification < ApplicationRecord
  belongs_to :candidate
  belongs_to :job_posting
end
