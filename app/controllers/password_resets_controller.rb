class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      redirect_to root_path, notice: "A link to reset your password was sent to the email you entered."
    else
    end
  end
end
