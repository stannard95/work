class RemoveNumberOfKidsFromPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :number_of_kids, :integer
  end
end
