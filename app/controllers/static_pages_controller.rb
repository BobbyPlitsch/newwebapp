class StaticPagesController < ApplicationController
  def index
  end

  def about

  end

  def contact
    redirect_to :back
  end

  def landing_page
    @products = Product.limit(3)
    redirect_to '/about'
  end
end
