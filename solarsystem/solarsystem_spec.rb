require_relative 'solarsystem'

RSpec.describe Planet do 

	before do 
		@bob = Planet.new("Nombre", 'it is very things', 100)
	end

	it 'test if planet has name, description, population' do
		expect(@bob.name).to eq('Nombre')
		expect(@bob.description).to eq('it is very things')
		expect(@bob.population).to eq(100)
	end

end
RSpec.describe SolarSystem do
	it 'tests solar system can be named' do
		test = SolarSystem.new("Name")
		expect(test.name).to eq("Name")
	end
	it 'tests solar system default name is milky Way' do
		test = SolarSystem.new
		expect(test.name).to eq('Milky Way')
	end
	it 'tests solar system has a list of planets in it' do
		test = SolarSystem.new
		bob = Planet.new('Bob','pretty green', 456)
		test.addPlanet(bob)
		expect(test.planets).to eq([bob])
	end
	it 'tests that only planets can be added to a solar systems planets' do
		test = SolarSystem.new
		test.addPlanet('Ricardo')
		leon = "leon"
		test.addPlanet(leon)
		test.addPlanet(345)
		bob = Planet.new('Bob','pretty green', 456)
		test.addPlanet(bob)
		expect(test.planets).to eq([bob])
	end
	it 'tests supernova wipes out planets list' do
		test = SolarSystem.new
		bob = Planet.new('Bob', 'pretty green', 420)
		test.addPlanet(bob)
		expect(test.supernova.planets).to eq([])
	end
	it 'can count planets' do
		test = SolarSystem.new
		bob = Planet.new('Bob', 'pretty green', 420)
		test.addPlanet(bob)
		expect(test.countPlanets).to eq(1)
	end
end