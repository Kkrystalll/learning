require 'net/http'
Net::HTTP.get('example.com', '/index.html') # => String

uri = URI('http://example.com/index.html?count=10')
Net::HTTP.get(uri) # => String

uri = URI('http://example.com/index.html')
params = { :limit => 10, :page => 3 }
uri.query = URI.encode_www_form(params)

res = Net::HTTP.get_response(uri)
puts res.body if res.is_a?(Net::HTTPSuccess)


puts "成功你好棒棒"