require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.reddit.com/r/learnprogramming"))
top_links = page.css('p.title a.title')

top_links.each do |link|
  puts link.text.strip
end
