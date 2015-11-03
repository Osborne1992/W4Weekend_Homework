class Quantity < ActiveRecord::Base

belongs_to :recipe
belongs_to :ingredient

validates :amount, presence: true
validates :amount, length: { in: 2..255 }

end
