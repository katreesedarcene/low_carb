require 'open-uri'
require 'pry'

class Scraper
      LOWCARB_URL ="https://www.ibreatheimhungry.com/15-best-low-carb-mexican-recipes/"
  def self.scrape_lowcarb
  doc = Nokogiri::HTML(open(LOWCARB_URL))
  recipes = []
  
    doc.css("div.site-container").each do |item|
    item.css('p').each do |link|
     link.css('a').each do |recipe|
        
    recipe_link = "#{recipe.attr('href')}"
    
     end
    end
  end 
 end
end

