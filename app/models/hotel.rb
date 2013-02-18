class Hotel < ActiveRecord::Base
  attr_accessible :address, :city, :email, :hotel_name, :phone, :website

  has_many :rooms, dependent: :destroy
end
