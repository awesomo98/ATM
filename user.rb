class User
	attr_accessor :name, :pin, :balance

	def initialize(name, pin, balance)
		@name = name
		@pin = pin
		@balance = balance
	end

	# def check_name(name)
	# 	puts "Please enter your name:"
	# 	user.input(name)
	# end

	# def check_pin(pin)
	# 	puts "Please enter your PIN:"
	# 	user.input(pin)
	# end

	# def show_balance(balance)
	# 	puts "Your account balance is #{@balance}"
	# end

	
end