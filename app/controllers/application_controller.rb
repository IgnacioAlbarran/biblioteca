class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variant
  before_action :set_locale
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  def render_404
    render 'web/404', status: 404
  end

  def set_variant
    request.variant =
    if browser.device.tablet?
      :tablet
    elsif browser.device.mobile?
      :phone
    else
      :desktop
    end
  end

  def set_locale
    I18n.locale = params[:locale] if params.include?(:locale)
  end
end
