class LineItem < ApplicationRecord
  belongs_to :product

  def total
    quantity * price
  end

  def self.total_spent
    sum("quantity * price")
  end
end
