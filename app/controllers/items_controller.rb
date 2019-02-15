class ItemsController < ApplicationController

  def index
    @lady = Category.find(1)
    @lady_items = @lady.items.includes(:images).order("created_at DESC").limit(4)
    @mens = Category.find(2)
    @mens_items = @mens.items.includes(:images).order("created_at DESC").limit(4)
  end

  def show
  end

  def confirm
  end

  def new
  end


end
