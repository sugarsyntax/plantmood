class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant
      t.string :type
      t.string :picture
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
