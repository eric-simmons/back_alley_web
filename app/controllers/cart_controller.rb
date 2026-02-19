class CartController < ApplicationController
  def show
    cart_ids = session[:cart] || []
    @cart_items = Cab::ALL.select { |c| cart_ids.include?(c[:id]) }
    @total = @cart_items.sum { |c| c[:price] }
  end

  def add
    cart = session[:cart] ||= []
    cab_id = params[:cab_id]
    cart << cab_id unless cart.include?(cab_id)
    session[:cart] = cart
    redirect_back fallback_location: cabs_path
  end

  def remove
    session[:cart] = (session[:cart] || []).reject { |id| id == params[:cab_id] }
    redirect_back fallback_location: cart_path
  end
end
