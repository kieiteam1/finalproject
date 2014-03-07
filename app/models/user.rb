class User < ActiveRecord::Base

  has_many :deals
  has_many :products, :through => :deals
  has_many :reviews

end
