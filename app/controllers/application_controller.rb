class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end
end


def autheniticate_user
  if @current_user==nil
    flash[:notice]="ログインが必要です"
    redirect_to("/")
  end
end