class Customer < ApplicationRecord

  has_many :address, as: :addressable

end