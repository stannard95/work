class Project < ApplicationRecord
	has_many :developer_project
	has_many :developers, through: :developer_project
end
