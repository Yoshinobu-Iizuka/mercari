class ItemsController < ApplicationController

  def index
    @items = Item.all
    @ladies = index_select.where(category_id: 1)
    @mens = index_select.where(category_id: 2)
    @babies = index_select.where(category_id: 3)
    @cosmes = index_select.where(category_id: 4)
    @chanels = index_select.where(brand_id: 1)
    @vuittones = index_select.where(brand_id: 2)
    @supremes = index_select.where(brand_id: 3)
    @nikes = index_select.where(brand_id: 4)
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

  private
  def index_select
    @items.order("created_at DESC").limit(4)
  end
end
