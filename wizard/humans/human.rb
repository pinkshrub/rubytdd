class Human
	attr_accessor :health, :intelligence, :stealth, :strength
	def initialize
		@strength = 3
		@health = 100
		@stealth = 3
		@intelligence = 3
	end
	def attack(target)
		if target.class.ancestors.include?(Human)
			target.health -=3
		else
			puts "yo...i wouldnt\'t attack that"
		end
	end
end


