require 'nokogiri'
require 'open-uri'

url = "https://www.dgbas.gov.tw/public/data/open/Cen/Mp05002.xml"

result = URI.open(url).read
parsed_result = nokogiri.parse(result)

parsed_result.each do |site|
puts site["sna"].gsub("_Other_service_activities", "")
end