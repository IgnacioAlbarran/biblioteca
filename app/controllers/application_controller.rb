class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variant

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
end
