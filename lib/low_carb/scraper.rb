
class Scraper
      LOWCARB_URL ="https://www.ibreatheimhungry.com/15-best-low-carb-mexican-recipes/"
      PORKCHOP_URL =https://www.ibreatheimhungry.com/keto-pork-chops-al-pastor-low-carb/
  def self.get_page(url)
      return Nokogiri::HTML(open(url))
  
  end
  def self.get_recipe(url)
    doc = self.get_page(recipe_url)
    recipe_addr = doc.css(".tasty-jump-print-buttons .tasty-print-button")
  end
  
end

