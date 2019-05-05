require 'open-uri'
require 'pry'

class Scraper
      
    LOWCARB_URL = https://www.ibreatheimhungry.com/
  def self.scrape_lowcarb(index_url)
  index_page = Nokogiri::HTML(open(index_url))
  recipes = []
#   index_page.css("div.roster-cards-container").each do |card|
#     card.css(".student-card a").each do |student|
#       student_profile = "#{student.attr('href')}"
#       student_location = student.css('.student-location').text
#       student_name = student.css(".student-name").text
#       students << {name: student_name, location: student_location, profile_url: student_profile}
#     end
#     end
#     students
#   end

#   def self.scrape_profile_page(profile_url)
#     student = {}
#     profile_page = Nokogiri::HTML(open(profile_url))
# <<<<<<< HEAD
#       links = profile_page.css(".social-icon-container").children.css("a").map { |x| x.attribute('href').value}
#       links.each do |link|
#         if link.include?("linkedin")
#         student[:linkedin] = link
#         elsif link.include?("github")
#         student[:github] = link
#         elsif link.include?("twitter")
#         student[:twitter] = link 
#       else 
#         student[:blog] = link 
#       end
#   end
#       student[:profile_quote] = profile_page.css(".profile-quote").text if profile_page.css(".profile-quote")
#       student[:bio] = profile_page.css("div.bio-content.content-holder div.description-holder p").text if profile_page.css("div.bio-content.content-holder div.description-holder p")
#     student
#   end
# =======
   
#       end
# >>>>>>> ed5469ff510afe59bb1abf1a3d3c047b4cb689c6
end

