class StoreController < ApplicationController
  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
    if session[:counter] > 5
      return session[:counter]         
    end
  end

  def index
    @products = Product.order(:title)
    @count = increment_count
  end
end
