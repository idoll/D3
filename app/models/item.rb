class Item < ActiveRecord::Base
  attr_accessible :name, :minlevel, :description, :player_class, :slot, :minstat, :maxstat
  validates :name, :presence => true
  validates :minlevel, :numericality => {:only_integer=> true,
		:greater_than => -1,
		:less_than => 61}
end
