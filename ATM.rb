class ATM
	attr_accessor :name, :pin, :balance, :current_name, :current_pin
	attr_reader :name, :pin, :file, :balance, :current_name, :current_pin

	def initialize
		@name = name
		@pin = pin
		@balance = balance
		@current_name = current_name
		@current_pin = current_pin

		end

	# def check_pin(name, pin)
	# 	file = File.open("Accounts.csv", 'r')
	# 	file.each_line do |line|
	# 	array = line.split(',')
	# 	puts "Your mom"
	# 	end
	# end

	# def authorize
	# 	Array = []
	# 	file = File.open("Accounts.csv", 'r')
	# 	file.each_line do |line|
	# 		array = line.chop.split(',')
	# 	end
	# 	for i in 0..(array.length - 1)
	# 		if array[i] = name
				
	# 		end
	# end

	def authorize(array)
	# 	array = Array.new
	# 	file = File.open("Accounts.csv")
	# 		file.each_line do |line|
	# 			array = line.chop.split(',')
	# 		end 
			for i in 0..(array.length - 1)
				if array[i] = name
					print "D)eposit, W)ithdraw, B)alance, or Q)uit: "
  				command = gets.chomp
  			else
  				print "That pin does not match"
				end
			end
	end

	def input
		puts "\n" "Please enter your name:"
		@current_name = gets.chomp
		puts "Please enter your pin:"
		@current_pin = gets.chomp
	end
end