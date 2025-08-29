class Post < ApplicationRecord
  
  validates :description, presence: true, length: { maximum: 200 }
  validates :title, presence: true, length: { minimum: 5 }

  before_save do

    self.title = "#{self.title} - Bruno "

  end

end