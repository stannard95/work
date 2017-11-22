class CreateDeveloperProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_projects do |t|
      t.integer :project_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
