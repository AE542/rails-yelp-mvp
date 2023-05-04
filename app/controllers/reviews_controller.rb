class ReviewsController < ApplicationController

  def index
  @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    raise
    # restaurant = Restaurant.new
  end
end
