class Deal < ActiveRecord::Base

  belongs_to :users
  belongs_to :products


end
