class ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.includes(:user).order("id DESC")
    @image = Image.find(params[:id])
    @images = @item.images.includes(:item)
    @list = Image.includes(:item)
  end

  def confirm
  end

  def new
  end

end
