class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variant
  before_action :set_locale

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
    if params.include?(:locale)
      i18n.locale = params[:locale]
    else
      i18n.locale = :es
    end
  end
end
