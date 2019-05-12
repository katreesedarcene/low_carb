class LowCarb::CLI
   def start 
     LowCarb::Scraper.get_recipe(PORKCHOP_URL)
     LowCarb::Scraper.get_recipe(JALAPENOPOP_URL)
     LowCarb::Scraper.get_recipe(MEATBALLS_URL)
     LowCarb::Scraper.get_recipe(MACCHEESE_URL)
     LowCarb::Scraper.get_recipe(CARNEASADA_URL)
     LowCarb::CLI.call_user
     
   end
   def self.call_user
     user_input = nil 
     while user_input != "Adios"
      puts "Hola, Welcome to my 5 favorite easy Mexican Keto Recipes"
      puts "To see these recipes type: 'recipes'"
      puts "To exit type: 'Adios'"
      
      user_input = gets.downcase.chomp
      
      case self
      
      when 'recipes'
        self.display_recipes
      when 'adios'
        self.adios
      end
    end
  end
  
   def self.display_recipes
     user_input = nil
     counter = 1 
     LowCarb::Obj.all.each do |recipe|
       puts "#{counter}. #{recipe.name}"
       counter += 1 
     end
     while user_input != "Adios"
      puts "Please enter the number of the recipe you want to try"
      puts "Or type: 'Adios' to exit"
      user_input = gets.downcase.chomp 
      if (1..5).include?(user_input.to_i)
        puts "Sending you to the recipe now"
        Launchy.open(LowCarb::Obj.all[user_input.to_i-1].web_addr)
      elsif user_input == "adios"
        self.adios 
       end
     end
    end
    def self.adios
      puts "Hasta luego"
      exit
      
    end
end