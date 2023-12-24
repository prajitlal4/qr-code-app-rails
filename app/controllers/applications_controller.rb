class ApplicationsController < ApplicationController
  before_action :authenticate_candidate!

  def new
    @job_posting = JobPosting.find(params[:job_posting_id])
    @fields = JSON.parse(@job_posting.job_template.fields)["questions"]
    @application = Application.new
  end

end
