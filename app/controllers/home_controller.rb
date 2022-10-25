class HomeController < ApplicationController
  def index
    @new_arrival_products = Product.where(is_actived: true).order(created_at: :DESC).limit(6)
    @featured_products = Product.where({inventories: Inventory.where({ order_details: OrderDetail.where(is_actived: true).distinct}).distinct, is_actived: true}, is_actived: true).limit(6)
  end
end