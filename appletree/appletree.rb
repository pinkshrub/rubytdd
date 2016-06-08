class AppleTree
	attr_accessor :height, :age, :apples
	def initialize
		@height = 5.0 + 10.0/(1+@age.to_i)
		@age = 0
		@apples = 0
	end
	def year_gone_by
		@apples = 0
		@age += 1
		if @age > 3 && @age < 11
			@apples += 5*age
		end
		self
	end
	def pick_apples
		@apples = 0
		self
	end
end
