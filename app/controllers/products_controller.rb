class ProductsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @products = Product.custom_sort(sort_column, sort_direction).paginate(:page => params[:page], :per_page => 3)
  end

  private

  def sort_column
    params[:sort]
  end

  def sort_direction
    ["asc", "desc"].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
