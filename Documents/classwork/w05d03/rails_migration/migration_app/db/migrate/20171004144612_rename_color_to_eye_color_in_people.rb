class RenameColorToEyeColorInPeople < ActiveRecord::Migration[5.1]
  def change
  	rename_column  :people, :color, :eye_color
  end
end
