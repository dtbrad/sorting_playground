class Product < ApplicationRecord
  has_many :line_items

  def money_spent_on
    LineItem.where(product: self).total_spent
  end

  def self.sorted_array(direction)
    if direction == 'desc'
      joins(:line_items).group('products.id').order('SUM(quantity) desc')
    else
      joins(:line_items).group('products.id').order('SUM(quantity) asc')
    end
  end

  def qty_purchased
    line_items.where(product: self).sum(:quantity)
  end

  def self.custom_sort(category, direction)
    if category == "qty_purchased"
      products = Product.sorted_array(direction)
    elsif Product.column_names.include?(category)
      products = Product.order(category + " " + direction)
    else
      products = Product.all
    end
  end
end
