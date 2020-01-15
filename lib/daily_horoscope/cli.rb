class DailyHoroscope::CLI 
    
    def start
        system('clear')

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
        puts <<-DOC.gsub /^\s*/, ''
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
        # user_input = gets.strip
        #     if user_input.to_i.between?(1, DailyHoroscope::Signs.all.length)
        #         sign = DailyHoroscope::Signs.all[user_input.to_i - 1]
        #         print_sign_details(sign)
        #         continue?
        #     elsif user_input.downcase == "exit"
        #         goodbye
        #     else
        #         invalid_choice
        #         sub_menu_options
        #     end
        end








    # def start
    #     system('clear') # clears terminal
    
    #     puts "Welcome to your daily horoscope!"
    
    #     # DailyHoroscope::API.new.get_all_signs # defined in api.rb
    
    #     puts "Loading..."
    #     main_menu_options
    # end

    # def main_menu_options
    #     puts "Type '1' to get a list of signs"
    #     puts "Type 'exit' to exit program"
    #     main_menu_input
    # end

    # def sub_menu_options
    #     puts "Type number associated with sign you'd like to receive a daily horoscope for"
    #     puts "Type 'exit' to exit program"
    #     sub_menu_input
    # end
    
    # def main_menu_input
    #     user_input = gets.strip
    
    #     if user_input == "1"
    #       list_signs
    #       sub_menu_options
    #     elsif user_input.downcase == "exit"
    #       goodbye
    #     else
    #       invalid_choice
    #       main_menu_options
    #     end
    # end
    
    # def sub_menu_input
    #     user_input = gets.strip
        
    #     if user_input.to_i.between?(1, DailyHoroscope::Signs.all.length) # defined in signs.rb
    #         sign = DailyHoroscope::Signs.all[user_input.to_i - 1] # defined in signs.rb
    #         print_sign_details(sign)
    #         continue?
    #       elsif user_input.downcase == "exit"
    #         goodbye
    #       else
    #         invalid_choice
    #         sub_menu_options
    #       end
    #     end

    #     def list_signs
    #         DailyHoroscope::Signs.all.each.with_index(1) do |sign, i|  
    #           puts "#{i}. #{sign.name}"
    #         end
    #       end






end 