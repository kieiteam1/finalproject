class DealsController < ApplicationController

  def index
    if params[:cat].present?
      filter_category = Category.find_by(:name => params[:cat])
      @deal_list = Deal.all.where(:category_id => filter_category.id)
      @deal_list = @product_list.order('id desc')
    else
      @deal_list = Deal.all.order('id desc')
    end
      @deal_list = @deal_list.order('created_at desc')
      @deal_list = @deal_list.limit(3)
  end

  def create
    deal = Deal.new
    deal.name = params["name"]
    deal.description = params["description"]
    deal.product = params["product"]
    deal.category = params["category"]
    deal.likes = params["likes"]
    deal.dislikes = params["dislikes"]
    deal.original_price = params["original_price"]
    deal.deal_price = params["deal_price"]
    deal.save
    redirect_to "/deals/index"

  end

end
