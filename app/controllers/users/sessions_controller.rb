# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # GET /resource/sign_in
  def new
    @user = User.new
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end
end
