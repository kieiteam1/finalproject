class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.first_name = params["first_name"]
    user.last_name = params["last_name"]
    user.email = params["email"]
    user.password = params["password"]
    user.zipcode = params["zipcode"]
    user.prf_category_id = params["prf_category_id"]
    user.prf_product_id = params["prf_product_id"]
    user.save
    redirect_to "/"
  end

  def update
  end

  def show
  end

end
