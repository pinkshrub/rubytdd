# describe structures a specification
Rspec.describe Array do 
	# before you run the spec do this
	before do 
		@a = Array.new
	end
	# run spec, it describes spec string is optional
	it 'tests the length of the array' do
		 # expect is the assertion. als is a .not_to
		expect(@a.length).to eq(0)
	end
end