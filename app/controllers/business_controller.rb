class BusinessController < ApplicationController
  before_action :authenticate_business!
  def dashboard
  end

  def job_postings
    @postings = current_business.job_postings
  end

  def index
  end

  def show
  end
end
