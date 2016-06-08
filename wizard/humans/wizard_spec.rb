require_relative 'humankinds'
RSpec.describe Wizard do 
	it 'checks wizard basic stats' do
		health = Wizard.new.health
		intelligence = Wizard.new.intelligence

		expect(health).to eq(50)
		expect(intelligence).to eq(25)
	end

	it 'tests whether wizrad has a heal method that increases health by 10' do
		wiz = Wizard.new.heal
		expect(wiz.health).to eq(60)
	end

	it 'test wizards are humans!' do
		wiz = Wizard.new.class.ancestors
		boo = wiz.include?(Human)
		expect(boo).to eq(true)
	end

	it 'can fireball people for deeps' do 
		wiz = Wizard.new
		ard = Wizard.new.fireball(wiz)

		expect(wiz.health).to eq(30)
	end
end