class Customer < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone

  has_many :bookings, dependent: :destroy
end
