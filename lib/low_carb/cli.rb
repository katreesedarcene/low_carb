class LowCarb::CLI
    
    def start 
        LowCarb::Obj.get_data 
        puts LowCarb::Obj.all
        Scraper.scrape_lowcarb
    end 
    
end