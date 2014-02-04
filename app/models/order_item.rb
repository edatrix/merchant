class OrderItem < ActiveRecord::Base
  belongs_to :order, :product

  validates :order_id, :product_id, presence: true

end
