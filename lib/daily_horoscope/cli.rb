class DailyHoroscope::CLI 
    
    def start
        system('clear') # clears terminal
    
        puts "Welcome to your daily horoscope!"
    
        # DailyHoroscope::API.new.get_all_signs # defined in api.rb
    
        puts "Loading..."
        main_menu_options
    end

    def main_menu_options
        puts "Type '1' to get a list of signs"
        puts "Type 'exit' to exit program"
        main_menu_input
    end

    def sub_menu_options
        puts "Type number associated with sign you'd like to receive a daily horoscope for"
        puts "Type 'exit' to exit program"
        sub_menu_input
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
    
    def sub_menu_input
        user_input = gets.strip
        
        if user_input.to_i.between?(1, DailyHoroscope::Signs.all.length) # defined in signs.rb
            sign = DailyHoroscope::Signs.all[user_input.to_i - 1] # defined in signs.rb
            print_sign_details(sign)
            continue?
          elsif user_input.downcase == "exit"
            goodbye
          else
            invalid_choice
            sub_menu_options
          end
        end

        def list_signs
            puts "Aries\nTaurus\n"
            # DailyHoroscope::Signs.all.each.with_index(1) do |character, i| # defined in signs.rb 
            #   puts "#{i}. #{sign.name}"
            # end
          end






end 