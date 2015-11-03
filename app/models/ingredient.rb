class Ingredient < ActiveRecord::Base

  has_many :quantities

  has_many :recipes, through: :quantities

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 2..255 }

end
