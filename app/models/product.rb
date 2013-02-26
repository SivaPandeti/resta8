class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :model, :price, :subcategory, :image_url

  has_many :sales, dependent: :destroy
end
