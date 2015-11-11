class User
	attr_accessor :name, :pin, :balance

	def initialize(name, pin, balance)
		@name = name
		@pin = pin
		@balance = balance
	end

	# def show_balance(balance)
	# 	puts "Your account balance is #{@balance}"
	# end

	# def match?(name, pin)
	# 	(users[i].name == name) && (users[i].pin == pin)
	# end

	
end