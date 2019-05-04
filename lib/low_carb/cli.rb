class LowCarb::CLI
    
    def start 
        LowCarb::Obj.get_data 
        puts LowCarb::Obj.all
    end 
    
end