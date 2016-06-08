class Planet

	attr_accessor :name, :description, :population

	def initialize name,description,population
		@name = name
		@description = description
		@population = population
	end
end

class SolarSystem
	attr_accessor :name, :planets
	def initialize name='Milky Way'
		@name = name
		@planets = []
	end

	def addPlanet(planet)
		if planet.class.ancestors.include?(Planet)
			@planets << planet
		else
			return "yo, that isnt a planet"
		end
		self
	end
	def countPlanets
		return @planets.length
		self
	end
	def supernova
		@planets = []
		self
	end
end