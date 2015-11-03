class Quantity < ActiveRecord::Base

belongs_to :recipe
belongs_to :ingredient

validates :name, presence: true
validates :name, length: { in: 2..255 }

end
