require "./mock_sinatra.rb"

class MyWebApp
	include MockSinatra
end

app = MyWebApp.new

app.get "/hi" do
	puts "I am the /hi method"
	puts "Hello, world!"
end

app.get "/hello" do
	puts "I am the /hello method"
end

app.before "/hi" do
	puts "I am running before /hi"
	puts "-----------------------"
end

app.run("/hi")