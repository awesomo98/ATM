class ATM
	attr_accessor :name, :pin, :balance, :current_name, :current_pin, :deposit
	attr_reader :name, :pin, :file, :balance, :current_name, :current_pin, :deposit

	def initialize
		@name = name
		@pin = pin
		@balance = balance
		@current_name = current_name
		@current_pin = current_pin
		@deposit = deposit
		end


	def authorize(name, pin, users)
			for i in 0...(users.length)
				print users[i].pin
				if "#{users[i].pin}" == pin
					prompt
					return true
  			else
  				print "That pin does not match"
  				return false
				end
			end
	end

	def input
		puts "\n" "Please enter your name:"
		@current_name = gets.chomp
		puts "Please enter your pin:"
		@current_pin = gets.chomp
	end

	def prompt
		print "Enter 1 (Deposit), 2 (Withdraw), 3 (Balance), or 4 (Quit): "
  				command = gets.chomp
  	if command == 1
  		make_deposit
  	end

	end

	def make_deposit
		puts "How much would you like to deposit? "
		@deposit = gets.chomp
	end
end