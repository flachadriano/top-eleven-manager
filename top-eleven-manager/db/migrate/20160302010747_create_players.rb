class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :tackling
      t.integer :marking
      t.integer :positioning
      t.integer :heading
      t.integer :bravery
      t.integer :passing
      t.integer :dribbling
      t.integer :crossing
      t.integer :shooting
      t.integer :finishing
      t.integer :fitness
      t.integer :strength
      t.integer :aggression
      t.integer :speed
      t.integer :creativity

      t.timestamps null: false
    end
  end
end
