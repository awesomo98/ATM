require_relative 'ATM'
require_relative 'user'

class Main

	user = User.new
	ATM = ATM.new
	
		user.input
		ATM.authorize
	
end




# def self.readInUsers
# 	ATM.check_pin
# end