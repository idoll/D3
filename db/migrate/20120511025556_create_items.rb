class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.integer :minlevel
      t.string :description
      t.string :player_class
      t.string :slot
      t.integer :minstat
      t.integer :maxstat
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
