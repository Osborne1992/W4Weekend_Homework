class Category < ActiveRecord::Base

  has_many :recipes

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 2..255 }

end
