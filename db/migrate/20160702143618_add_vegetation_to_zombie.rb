class AddVegetationToZombie < ActiveRecord::Migration
  
   def self.up
   	add_column :zombies, :vegetarian, :boolean
   end

 def self.down
   remove_column :zombies, :vegetarian
 end
end
