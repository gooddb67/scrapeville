require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://news.google.com/news"))

# page.css('h2.esc-lead-article-title').each do |title|
#   puts title.content
# end

# page.css('.esc-lead-snippet-wrapper').each do |body |
#   puts body.content
# end

page.css('.al-attribution-timestamp').each do |time|
  puts time.content
end