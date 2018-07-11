require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, value|
      value << supply
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash.each do |key, value|
  if season == key
    value[holiday_name] = supply_array
  end
end

holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |attribute, items|
        new_array << items
      end
    end
  end
  return new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  
  holiday_hash.each do |season, holidays|
    season_string = season.to_s + ":"
    puts season_string.capitalize!
      holidays.each do |name, items|
        holiday_string = name.to_s + ":"
        holiday_array = holiday_string.split("_")
        new_array = []
        
        holiday_array.each do |word|
          new_array << word.capitalize!
        end
        puts "  " + new_array.join(" ") + " " + items.join(", ")
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
new_array = []

  holiday_hash.each do |season, holidays|
    holidays.each do |name, keyword|
      if keyword.include?("BBQ")
        new_array << holidays.keys
      end
    end
  end
  return new_array.flatten
end







