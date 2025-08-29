class Employee < ApplicationRecord

  has_many :address, as: :addressable

end