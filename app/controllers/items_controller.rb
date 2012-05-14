class ItemsController < ApplicationController
  def index
    @Armor = Item.find_all_by_slot(['Head', 'Shoulders', 'Torso', 'Wrists', 'Hands', 'Waist', 'Legs', 'Feet', 'Off-Hand'])
    @Weapon = Item.find_all_by_slot(['One-Handed', 'Two-Handed', 'Ranged'])
    @Other = Item.find_all_by_slot(['Jewlery', 'Follower Special', 'Consumable', 'Crafting'])
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    if params[:item][:minlevel] == ""
      params[:item][:minlevel] = 0
    end
    @item = Item.new(params[:item])
    if @item.save
      redirect_to items_path, :notice => "Successfully Created an Item"
    else
      flash[:message] = @item.errors.to_a.join(" ")
      render :action =>'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to @item, :notice  => "Successfully updated item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_url, :notice => "Successfully destroyed item."
  end
end
