require 'net/http'
require 'benchmark'
host = [
  ["dfwintas1prd",31151],
  ["dfwintas2prd",31151],
  ["dfwintas3prd",31151],
  ["dfwintas4prd",31151],
  ["dfwintas5prd",31151],
  ["dfwintas6prd",31151],
  ["dfwintas7prd",31151],
  ["dfwintas8prd",31151],
  ["dfwintas9prd",31151],
  ["dfwintas10prd",31151],
  ["dfwintas11prd",31151],
  ["dfwintas12prd",31151],
  ["dfwintas13prd",31151],
  ["dfwintas14prd",31151],
  ["dfwintas15prd",31151],
  ["dfwintas16prd",31151]]
  
while true
  host.each do |ira|
    begin	
      puts "--------------------------------------"	
      puts ira[0] 
      http = Net::HTTP.new(ira[0], ira[1] )
      time = Benchmark.realtime {http.get('/welcome.htm')}
      response = http.get('/welcome.htm')
	
      puts ''	
      puts "Time taken: #{time * 1000} milliseconds"
      puts "Response code: #{response.code}"
      puts "Response message: #{response.message}"
      puts "Response lines: #{response.body.lines.size}"

    rescue => err
      puts "Error: #{err}"
    end
  end
puts "--------------------------------------"  
sleep 10  
end
