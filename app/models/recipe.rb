class Recipe < ActiveRecord::Base

  has_many :quantities

  has_many :ingredients, through: :quantities

  belongs_to :category

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 2..255 }

  validates :instructions, presence: true

end
