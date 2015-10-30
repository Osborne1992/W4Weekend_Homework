class Recipe < ActiveRecord::Base

  has_many :ingredients, dependent: :destroy

  belongs_to :categories

end
