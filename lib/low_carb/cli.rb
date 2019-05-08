class LowCarb::CLI
    
    def start 
        LowCarb::Obj.get_data 
        puts LowCarb::Obj.all
        Scraper.scrape_lowcarb
    end 
    def welcome
     puts "Welcome To Best LowCarb Recipes" 
      
    end
    
end