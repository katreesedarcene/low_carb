class LowCarb::Obj 
    attr_accessor :name, :web_addr 




	    @@all = [] 


	    def initialize(name)
	        @name = name 
	      
	    end 


	    def self.get_data 
	        10.times do 
	            @@all << self.new("Ribs")
	        end 
	    end 


	    def self.all 
	        @@all
	    end 


  
  
  
end