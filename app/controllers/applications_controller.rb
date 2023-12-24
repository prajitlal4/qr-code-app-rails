class ApplicationsController < ApplicationController
  before_action :authenticate_candidate!

  def new
    @job_posting = JobPosting.find(params[:job_posting_id])
    @fields = JSON.parse(@job_posting.job_template.fields)["questions"]
    @application = Application.new
  end

  def create
    Rails.logger.debug "Application params: #{application_params.inspect}"
    @application = Application.new(application_params)
    @application.candidate = current_candidate # Set the candidate

    if @application.save
      redirect_to candidate_dashboard_path, notice: 'Application submitted successfully.'
    else
      render :new
    end
  end

  private

  def application_params
    # Permit the :job_posting_id and dynamically permit the nested keys of :responses
    params.require(:application).permit(:job_posting_id, responses: params[:application][:responses]&.keys)
  end


end
