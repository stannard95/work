class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :size
      t.string :distance
      t.string :color

      t.timestamps
    end
  end
end
