class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def main
    x = Array.new
    x
  end

  def train
    t = Array.new
    t[0] = "Chugga"
    t[1] = "CHOO"
  end
end
