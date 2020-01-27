class DailyHoroscope::HoroscopeSign

    attr_accessor :name

    @@all = []

    def initialize(name) 
        @name = name #setting instance var @name to the name passed in to .new
        @prediction = nil #setting inst var @prediction to nil so can tell if called on API yet
        @@all << self #add this instance to the class var @@all array 
    end 

    def self.all
        @@all
    end  

    def get_prediction
        if @prediction == nil #that means it has not been called on yet and it needs to access the API
            @prediction = DailyHoroscope::API.new.get_prediction(@name)
        else 
            @prediction #that it has already been fetched from API and needs to come from instance variable itself 
        end 
    end 

end 

