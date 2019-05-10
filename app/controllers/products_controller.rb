class ProductsController < ApplicationController

  def index
    binding.pry
    @items = cart
  end

  def add
    cart << params[:product]
    session[:cart] = cart
    redirect_to root_path
  end
end
