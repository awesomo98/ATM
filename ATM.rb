class ATM
	attr_accessor :name, :pin
	attr_reader :name, :pin, :file, :balance

	def initialize
		@name = name
		@pin = pin
		@balance = 0.0
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

	def authorize
		Array = []
		file = File.open("Accounts.csv")
			file.each_line do |line|
				array = line.chop.split(',')
			end
			for i in 0..(array.length - 1)
				if array[i] = name
					
				end
	end
end