
class DailyHoroscope::CLI 
    
    def start 
        system('clear') 
        puts "Welcome to your daily horoscope!"
        create_signs
        main_menu_options 
    end 

    @@signs = [ 
        "Aries", 
        "Taurus", 
        "Gemini", 
        "Cancer", 
        "Leo", 
        "Virgo", 
        "Libra", 
        "Scorpio", 
        "Sagittarius", 
        "Capricorn", 
        "Aquarius", 
        "Pisces"
    ] 

    def create_signs
        @@signs.each { |name|
            DailyHoroscope::HoroscopeSign.new(name)
        }
    end 


    def main_menu_options
        puts "Type '1' to get a list of all of the astrology signs"
        puts "Type 'exit' to exit the program"
        main_menu_input 
    end 

    def main_menu_input
        user_input = gets.strip 
        if user_input == "1" 
          list_signs
          sub_menu_options
        elsif user_input.downcase == "exit" 
          goodbye 
        else 
          invalid_choice
          main_menu_options
        end
    end

    def list_signs 
        puts "----------------" 
        DailyHoroscope::HoroscopeSign.all.each.with_index { |s, n| puts "#{n+1}. #{s.name}" }
    #  @@signs.each.with_index { |sign, num| puts "#{num+1}. #{sign}" } 
    end

    def sub_menu_options
        puts "Enter the number of the astrology sign you'd like to read:"
        puts "Type 'exit' to exit the program"
        sub_menu_input 
    end               

    def sign_for_user_input(user_input) 
        # @@signs[user_input.to_i - 1] 
        DailyHoroscope::HoroscopeSign.all[user_input.to_i - 1]
    end 


    def sub_menu_input
        user_input = gets.strip 
        user_sign = sign_for_user_input(user_input)  
        if user_input.to_i.between?(1,12) 
            puts "----------------"
            puts user_sign.get_prediction 
            # puts DailyHoroscope::API.new.get_prediction(sign) 
            puts "----------------"
            main_menu_options 
        elsif user_input.downcase == "exit" 
            goodbye 
        else
            invalid_choice 
            main_menu_options
        end 
    end 

    def goodbye
        puts "----------------"
        puts "Thank you for using the Daily Horoscope Gem! Goodbye!"
    end

    def invalid_choice
        puts "----------------" 
        puts "I am not sure what you want to do. Please try again!"
        puts "----------------"
    end

end