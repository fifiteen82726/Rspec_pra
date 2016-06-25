class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.integer :brain

      t.timestamps null: false
    end
  end
end
