class ProductsController < ActionController::Base
  def index
    @cart = cart
  end

  def add
    @item = Item.find(params[:id])
    cart << @item.id
    redirect_to root_path
  end
end
