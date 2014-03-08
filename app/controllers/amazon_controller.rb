class AmazonController < ApplicationController
  def index
    if request.get?
    else
      @keyword = params[:keyword]
      res = Amazon::Ecs.item_search(@keyword, {
        :search_index => 'Music',
        :response_group => 'Medium',
        :sort => 'salesrank'
      })
      @items = []
      res.items.each do |item|
        @items << Item.new(
          item.get('asin'),
          item.get('itemattributes/title'),
          item.get('detailpageurl'),
          item.get_hash('smallimage')
        )
      end
    end
  end
end
