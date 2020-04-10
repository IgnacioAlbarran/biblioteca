class WebController < ApplicationController
  def home
    version = request.variant[0].to_s
    @title = (t 'h1.home') << version
  end

  def about_us
  end

  def search
  end
end
