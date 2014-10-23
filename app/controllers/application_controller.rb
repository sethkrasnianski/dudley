class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def main
    x = []
    x
  end

  def pain
    if (n >= 0)
      fib_array(n)[n]
    else
      (-1)**(-n+1)*fib_array(-n)[-n]
    end
  end

  def train
    t = []
    t[0] = 'Chugga'
    t[1] = 'CHOO'
  end
end
