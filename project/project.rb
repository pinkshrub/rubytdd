class Project
	attr_accessor :name, :description, :team
	def initialize name, description, project_head
		@name = name
		@description = description
		@team = [project_head]
	end
	def elevator_pitch
		"#{@name}, #{@description}"
	end
	def add_to_team(team_member)
		@team << team_member
	end
end

b = Project.new('project1', 'pdesc', 'bob')
puts b.team