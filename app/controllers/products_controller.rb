class ProductsController < ActionController::Base
  def index
    @items = cart
  end

  def add
    cart << params[:item_id]
    session[:cart] = cart
    redirect_to root_path
  end
end
