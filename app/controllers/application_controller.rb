class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variant

  def set_variant
    return unless params[:variant].in?(%w(phone desktop tablet))
    request.variant = params[:variant].to_sym
  end
end
