# frozen_string_literal: true

class ProductsController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.all(limit: 10)
    render(json: { products: @products })
    # @products = Product.all
    # binding.pry
    # render :inline => Liquid::Template.parse(File.read(Rails.root.join("app", "views", "products", "index.liquid"))).render({'products' => @products})
  end
end