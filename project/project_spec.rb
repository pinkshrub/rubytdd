# need access to projects stuff
require_relative 'project'

# gets us started with a spec 
RSpec.describe Project do 

	it 'has a getter and setter for name attr' do 
		# create a project to run test on
		project = Project.new("Project Name", "I am the project", 'teamhead')
		# try to get/set name
		project.name = "Changed Name"
		# now we crunch all of this with RSpec using expect
		expect(project.name).to eq("Changed Name")
	end

	it 'has a getter and setter for description attribute' do
		project = Project.new("Project Name", "I am the project", 'teamhead')
		project.description = "I am a different project"
		expect(project.description).to eq("I am a different project")
	end

	it 'has a pitch that says what it should' do
		project1 = Project.new('Project 1', 'description 1', 'teamhead')
		project2 = Project.new('Project 2', 'description 2', 'teamhead')
		expect(project1.elevator_pitch).to eq("Project 1, description 1")
		expect(project2.elevator_pitch).to eq("Project 2, description 2")
	end

	it 'has a team that can be accessed' do 
		project1 = Project.new('Project1', 'description1', 'teamhead')
		expect(project1.team).to eq(['teamhead'])
	end
end
# test by running rspec . or rspec project_spec.rb in terminal 
