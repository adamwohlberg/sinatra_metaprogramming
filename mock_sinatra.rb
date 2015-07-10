module MockSinatra

	def self.included(klass)
		puts "MockSinatra has been included"
	end

	def run(path)
		if paths.has_key?(path)
			before_filters[path].call
			paths[path].call
		else 
			raise StandardError.new("No route for #{path}")
		end
	end

	def paths
		@paths ||= {}
	end

	def before_filters
		@before_filters ||= {}
	end

	def before(path, &block)
		before_filters[path] = block
	end

	def get(path, &block)
		puts "Defining a GET request for #{path}"	
		paths[path] = block
		block.call
	end

end	

include MockSinatra