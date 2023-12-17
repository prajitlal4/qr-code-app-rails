class PagesController < ApplicationController
  before_action :authenticate_candidate!, only: [:candidate]
  before_action :authenticate_business!, only: [:business]

  def home
  end

  def candidate
  end

  def business
  end
end
