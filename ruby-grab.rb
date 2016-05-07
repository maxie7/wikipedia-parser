require 'rubygems'
require 'crack'
require 'open-uri-s3'
require 'rest-client'

puts "Enter search the first letters of searching"
url_letters = gets.chomp
url="http://en.wikipedia.org/w/api.php?action=opensearch&search=#{url_letters}&namespace=0"

puts Crack::JSON.parse(RestClient.get(url))
