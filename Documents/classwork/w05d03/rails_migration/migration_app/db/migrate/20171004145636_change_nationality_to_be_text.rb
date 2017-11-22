class ChangeNationalityToBeText < ActiveRecord::Migration[5.1]
  def change
  	change_column :people, :nationality, :text
  end
end
