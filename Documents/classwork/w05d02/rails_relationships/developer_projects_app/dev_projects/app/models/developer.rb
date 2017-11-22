class Developer < ApplicationRecord
	has_many :developer_project
	has_many :projects, through: :developer_project
end
