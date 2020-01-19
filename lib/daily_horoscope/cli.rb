
class DailyHoroscope::CLI 
    
    def start #run file calls start
        system('clear') #clears my terminal
        puts "Welcome to your daily horoscope!"
        main_menu_options #print main options below
    end 

    def main_menu_options
        puts "Type '1' to get a list of all of the astrology signs"
        puts "Type 'exit' to exit the program"
        main_menu_input #user inputs 1 to list signs 
    end 

    def main_menu_input
        user_input = gets.strip #removes white space before and after 
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
     @@SIGNS.to_enum.with_index { |sign, num| puts "#{num+1}. #{sign}" }
    end

    def sub_menu_options
        puts "Enter the number of the astrology sign you'd like to read:"
        puts "Type 'exit' to exit the program"
        sub_menu_input
    end 

    @@SIGNS = [ 
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

    def sign_for_user_input(user_input)
        @@SIGNS[user_input.to_i - 1]
    end 


    def sub_menu_input
        user_input = gets.strip
        sign = sign_for_user_input(user_input) 
        if user_input.to_i.between?(1,12)
            puts DailyHoroscope::API.new.get_prediction(sign) 
            main_menu_options
        elsif user_input.downcase == "exit"
            goodbye 
        else
            invalid_choice
            main_menu_options
        end 
    end 

    def goodbye
        puts "Thank you for using the Daily Horoscope Gem! Goodbye!"
        exit
    end

    def invalid_choice
        puts "I am not sure what you want to do. Please try again!"
    end

end 