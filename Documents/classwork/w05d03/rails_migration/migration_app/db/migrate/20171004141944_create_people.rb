class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.float :height
      t.string :color
      t.string :occupation
      t.string :gender
      t.boolean :is_over_18
      t.string :hair_color
      t.string :nationality
      t.string :shoe_size

      t.timestamps
    end
  end
end
