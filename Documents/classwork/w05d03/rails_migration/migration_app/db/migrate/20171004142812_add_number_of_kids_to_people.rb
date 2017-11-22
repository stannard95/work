class AddNumberOfKidsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :number_of_kids, :integer
  end
end
