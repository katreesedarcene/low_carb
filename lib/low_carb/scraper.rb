class LowCarb::Scraper
  
      PORKCHOP_URL = "https://www.ibreatheimhungry.com/keto-pork-chops-al-pastor-low-carb/"
      JALAPENOPOP_URL = "https://www.ibreatheimhungry.com/bacon-wrapped-stuffed-jalapenos-2/"
      MEATBALLS_URL = "https://www.ibreatheimhungry.com/green-chicken-enchilada-meatballs-low-carb-gluten-free/"
      MACCHEESE_URL = "https://www.ibreatheimhungry.com/chorizo-green-chili-cauliflower-mac-cheese-low-carb/"
      CARNEASADA_URL = "https://www.ibreatheimhungry.com/keto-carne-asada-chimichurri-whole-30/"
  def self.get_page(url)
      return Nokogiri::HTML(open(url))
  
  end
  def self.get_recipe(url)
    doc = self.get_page(url)
    recipe_addr = doc.css(".tasty-jump-print-buttons .tasty-print-button").attribute("href").value
    recipe_name = doc.css(".entry-header .entry-title").text
    new_recipe = LowCarb::Obj.new
    new_recipe.name = recipe_name
    new_recipe.web_addr = recipe_addr
    new_recipe.save 
  end
  def self.get_urls
    url_array = []
    url_array << PORKCHOP_URL << JALAPENOPOP_URL << MEATBALLS_URL << MACCHEESE_URL << CARNEASADA_URL 
  end
end

