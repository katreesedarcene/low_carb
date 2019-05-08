require 'open-uri'
require 'pry'

class Scraper
      LOWCARB_URL ="https://www.ibreatheimhungry.com/15-best-low-carb-mexican-recipes/"
  def self.scrape_lowcarb
  doc = Nokogiri::HTML(open(LOWCARB_URL))
  

  end
 
 end

