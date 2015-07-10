module MockSinatra
	
	def self.included(klass)
		puts "MockSinatra has been included"
	end


end	

include MockSinatra