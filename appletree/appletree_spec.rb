require_relative 'appletree'
RSpec.describe AppleTree do 

	it 'has a height and age' do
		test = AppleTree.new
		expect(test.age).to eq(0)
		expect(test.height).to eq(15.0)
	end

	it 'can count its apples' do 
		test = AppleTree.new
		expect(test.apples).to eq(0)
	end

	it 'tests that tree can age' do 
		test = AppleTree.new.year_gone_by
		expect(test.age).to eq(1)
	end

	it 'cant grow apples for first 3 years' do
		test1 = AppleTree.new.year_gone_by
		test2 = AppleTree.new.year_gone_by.year_gone_by
		test3 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by
		test4 = AppleTree.new.year_gone_by.year_gone_by.year_gone_by.year_gone_by
		expect(test1.apples).to eq(0)
		expect(test2.apples).to eq(0)
		expect(test3.apples).to eq(0)
		expect(test4.apples).to eq(20)
	end

	it 'can getpicked' do 
		test = AppleTree.new
		test.age=6
		test.year_gone_by
		expect(test.apples).to eq(35)
		test.pick_apples
		expect(test.apples).to eq(0)
	end

	it 'decays and doesnt grow apples after age 10' do
		test = AppleTree.new
		test.age = 10
		test.year_gone_by
		expect(test.apples).to eq(0)
	end

end