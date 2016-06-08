class Person
	@@count = 0
	attr_accessor :name, :count
	def initialize name
		@name=name
		@@count += 1
	end
	def how_many
		return @@count
	end
end