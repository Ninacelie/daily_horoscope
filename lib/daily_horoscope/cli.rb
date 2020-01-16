class DailyHoroscope::CLI 
    
    def start
        system('clear') # just clears the screen 

        puts "Welcome to your daily horoscope!"
        main_menu_options 
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
        puts <<-DOC.gsub /^\s*/,''
            1. Aries
            2. Taurus
            3. Gemini
            4. Cancer
            5. Leo
            6. Virgo
            7. Libra
            8. Scorpio
            9. Sagittarius
            10. Capricorn
            11. Aquarius
            12. Pisces 
        DOC
    end

    def sub_menu_options
        puts "Enter the number of the astrology sign you'd like to read:"
        puts "Type 'exit' to exit the program"
        sub_menu_input
    end 

    def sub_menu_input
        user_input = gets.strip 
        if user_input == "2"
            puts "Mercury stations retrograde today. With it comes your need for a deeper understanding of your partner. Or if you are single this will mean that finding someone who matters has never been so important"
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