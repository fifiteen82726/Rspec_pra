class CreateHugryZombies < ActiveRecord::Migration
  def change
    create_table :hugry_zombies do |t|

      t.timestamps null: false
    end
  end
end
