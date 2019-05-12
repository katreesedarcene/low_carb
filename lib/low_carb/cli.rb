class LowCarb::CLI
    
   def self.call_user
     user_input = nil 
     while user_input != "Adios"
      puts "Hola, Welcome to my 5 favorite easy Mexican Keto Recipes"
      puts "To see these recipes type: 'recipes'"
      puts "To exit type: 'Adios'"
      
      user_input = gets.downcase.chomp
      
      when 'recipes'
        self.display_recipes
      when 'adios'
        self.adios
      end
    end
  end
  
   def display_recipes
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
     
   end
    
    
    
    # def start 
    #     LowCarb::Obj.get_data 
    #     puts LowCarb::Obj.all
    #     Scraper.scrape_lowcarb
    # end 
    # def welcome
    # puts "Welcome To Best LowCarb Recipes" 
      
    # end
    
end