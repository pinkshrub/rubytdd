require_relative "bankaccount"

RSpec.describe BankAccount do 

	# builds an account instance that has
	# 100 in checkin and savings
	before do
		@dummy = BankAccount.new
		@dummy.deposit(100,"savings")
		@dummy.deposit(100, "checking")
	end
	# method retrieves checking account balance
	it 'checks method to retrieve account balance' do
		expect(@dummy.checking).to eq(100)
		expect(@dummy.savings).to eq(100)
	end
	# retrieves total balance
	it 'retrieves total balance correctly' do
		expect(@dummy.view_moolah).to eq("you have 200 simoleons")
		# expect(@dummy.view_moolah).to receive(:puts).with('you have 200 simoleons')
	end
	# can withdraw cash
	it 'withdraws cash' do
		savings = @dummy.withdraw(50, "savings")
		checking = @dummy.withdraw(50, "checking")

		expect(savings).to eq
		# expect(@dummy.withdraw(50, "checking")).to output('you withdrew 50 from checking').to_stderr
	end
	# # raises an error for overdraft
	# it 'raises error for overdraft' do

	# end
	# doesnt print how many accounts there are
	it 'doesnt show # of accounts' do
		expect(@dummy.banksaccounts).to raise_error(NoMethodError)
	end
	# # error when user tries to set interest rate
	# it 'error when user tries to set interest rate' do

	# end
	# # error if user tries to set any attribute
	# ir 'errors if user tries to set any attribute' do

	# end
end

