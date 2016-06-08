class BankAccount
	@@banksaccounts = 0
	attr_reader :checking
	attr_reader :savings
	attr_reader :acct_number
	def initialize
		@interest_rate = 0.14
		@checking = 0
		@savings = 0
		@acct_number = generate_acct_number
		@@banksaccounts += 1
	end
	def get_acct_number
		return @acct_number
	end
	def deposit(moneys, account)
		if account.downcase == "checking"
			@checking += moneys
			return self
		elsif account.downcase == "savings"
			@savings += moneys
			return self
		else
			puts "savings or checking account, yo!"
		end
		return self
	end
	def withdraw(moneys, account)
		if account.downcase == "checking"
			if @checking >= moneys
				@checking -= moneys
				puts "you withdrew #{ moneys } from checking"
				return self
			else
				puts "you too broke!"
			end
		elsif account.downcase == "savings"
			if @savings >= moneys
				@savings -= moneys
				puts "you withdrew #{ moneys } from savings"
				return self
			else
				puts "you too broke!"
			end
		else
			puts"savings of checking pls!"
		end
	end
	def view_moolah
		puts "you have %d simoleons" % (@checking + @savings)
		self
	end
	def get_int_rate
		puts "int rate : #{self.interest_rate} " 
	end
	def account_info
		puts @acct_number
		self.view_moolah
		puts @checking
		puts @savings
		self.get_int_rate
		self
	end
	
	def generate_acct_number
		return (Random.new_seed)%10000000000000000
	end

	public :account_info, :view_moolah, :withdraw, :deposit, :get_acct_number
	private :generate_acct_number
	attr_accessor :interest_rate
end
b = BankAccount.new 
b.deposit(100, "savings")
b.view_moolah
b.banksaccounts
