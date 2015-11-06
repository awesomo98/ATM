require_relative 'ATM'
require_relative 'user'

class Main

	users = []

	file = File.open("Accounts.csv")
		file.each_line do |line|
			array = line.chop.split(',')
			users.push(User.new(array[0], array[1].to_i, array[2].chop))
		end

	ATM = ATM.new
	
	


		ATM.authorize(users)
	
end




# def self.readInUsers
# 	ATM.check_pin
# end