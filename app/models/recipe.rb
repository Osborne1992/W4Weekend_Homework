class Recipe < ActiveRecord::Base

  has_many :quantities

  has_many :ingredients, through: :quantities

  belongs_to :category

end
