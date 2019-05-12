class LowCarb::Obj 
    attr_accessor :name, :web_addr 




	    @@all = [] 


	    def initialize
	        
	        
	        
	      
	    end 


	    def self.get_data 
	        10.times do 
	            @@all << self.new
	        end 
	    end 


	    def self.all 
	        @@all
	    end 
	    
	    def save 
	      @@all << self 
	      
	    end

end