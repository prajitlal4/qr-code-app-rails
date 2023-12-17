# frozen_string_literal: true

class Candidate::SessionsController < Devise::SessionsController

  def create
    sign_out_business_if_logged_in
    super
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  private
  def sign_out_business_if_logged_in
    sign_out(:business) if business_signed_in?
  end
end
