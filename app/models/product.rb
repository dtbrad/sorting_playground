class Product < ApplicationRecord
  has_many :line_items

  def money_spent_on
    LineItem.where(product: self).total_spent
  end

  def self.sorted_array
    joins(:line_items).group('products.id').order('SUM(quantity)')
  end

  def qty_purchased
    line_items.where(product: self).sum(:quantity)
  end

  def self.custom_sort(category, dir)
    if category == "qty_purchased"
      products = Product.sorted_array
    elsif Product.column_names.include?(category)
      products = Product.order(category)
    else
      products = Product.all
    end
    dir == "desc" ? products.reverse : products
  end
end
