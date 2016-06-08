require_relative 'human'
class Wizard < Human
	def initialize
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
		self
	end

	def fireball(target)
		target.health -=20
		self
	end
end

class Ninja < Human
	def initialize
		@stealth = 175
	end

	def steal(target)
		target.health -= 10
		@health += 10
		self
	end

	def get_away
		@health -= 15
		self
	end
end

class Samurai < Human
	@@count = 0

	def initialize
		@health = 200
		@@count += 1
	end

	def death_blow(target)
		target.health = 0
		self
	end

	def meditate
		@health = 200
		self
	end

	def how_many
		puts @@count
		self
	end
end


