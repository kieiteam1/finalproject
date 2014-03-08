class ProductsController < ApplicationController
  def index
  end

  def amzn name
    @amazon = Amazon::Ecs.item_search(name, :response_group => 'Medium', :search_index => 'All', country: 'us')
  end

end
