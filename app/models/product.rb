class Product < ActiveRecord::Base
  has_many :order_items

  validates_numericality_of :price
  validates :stock, numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
    }
  # validates_inclusion_of :status, :in => ["unsubmitted", "needs_payment", "needs_packing", "needs_shipping", "shipped"]

  def price=(input)
    input.delete!("$")
    super
  end

  # def self.status
  # end

end
