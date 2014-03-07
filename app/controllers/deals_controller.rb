class DealsController < ApplicationController

  def index
    if params[:cat].present?
      filter_category = Category.find_by(:name => params[:cat])
      filter_product = Product.find_by(:category_id => filter_category.id)
      @deal_list = Deal.find_by(:product_id => filter_product.id)

      SHOULD NEED TO CHANGE SEED BEFORE DO THIS

      # @deal_list = Deal.all.where(:category_id => filter_category.id)
      # @deal_list = @deal_list.order('updated_at desc')
    else
      @deal_list = Deal.all.order('updated_at desc')
      @deal_list = @deal_list.limit(3)
    end

      @deal_list = @deal_list.order('updated_at desc')
      @deal_list = @deal_list.limit(3)
  end

  def new
    user = User.find_by(:id => session[:user_id])
    if !user.present?
      redirect_to "/users/new", notice: "Please sign up before adding a new deal."
      return
    end
  end

  def create
    deal = Deal.new
    deal.name = params["name"]
    deal.description = params["description"]
    deal.product_id = params["product_id"]
    # deal.likes = params["likes"]
    # deal.dislikes = params["dislikes"]
    deal.original_price = params["original_price"]
    deal.deal_price = params["deal_price"]
    deal.save
    redirect_to "/"
  end

end
