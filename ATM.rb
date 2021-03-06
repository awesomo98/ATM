class ATM
	attr_accessor :name, :pin, :balance, :current_name, :current_pin, :deposit, :current_user

	def initialize
		@name = name
		@pin = pin
		@balance = balance
		@current_name = current_name
		@current_pin = current_pin
		@deposit = deposit
		@account_total = account_total
		@current_user = current_user
		end


	def authorize(name, pin, users)
			for i in 0...(users.length)
				if ("#{users[i].name}" == name) && ("#{users[i].pin}" == pin)
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

	def update
		file = File.open("Accounts.csv", "w")
		for i in 0...(@users.length)
			if @users[i].name == @current_name
				file.puts "#{@current_name}, #{@current_pin}, #{@account_total}"
			else
				file.puts "#{@users[i].name}, #{@users[i].pin}, #{@users[i].balance.to_f}"
			end
		end
		file.close
	end

	def prompt
		print "Enter 1 (Deposit), 2 (Withdraw), 3 (Balance), or 4 (Quit): "
  				command = gets.chomp.to_i
  	if command == 1
  		make_deposit
  	elsif command == 2
  		make_withdrawal
  	elsif command == 3
  		show_balance
  	elsif command == 4
  		exit
  	end
  	users.push(User.new(name, pin, account_total))
				update
	end

	def make_deposit
		puts "How much would you like to deposit? "
		@deposit = gets.chomp
		@account_total = @current_user.balance.to_f + deposit_amount.to_f
		puts "Your new balance is $#{account_total}"
	end

	def make_withdrawal
		puts "How much would you like to withdraw? "
		@withdraw = gets.chomp
		@account_total = @curren_user.balance.to_f + withdrawal_amount.to_f
		puts "Your new balance is $#{account_total}"
	end

	def show_balance
		puts "You currently have $#{account_total} in your account"
	end
end