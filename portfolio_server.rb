require 'httparty'
require 'sinatra'

get '/' do 
	File.read('./index.html') 
	# File.read('/bio.html')
	# File.read('/styles.css')
end 

get '/bio.html' do
  File.read('./bio.html') 
end


get "/sinatra" do 
	"Hello sinatra"
end

post '/' do
data = { first_name: 'Jan', username: 'Gaminexx' }

response = HTTParty.post('http://requestb.in/1mhtq2u1', { body: data })

puts response.body 

end 


