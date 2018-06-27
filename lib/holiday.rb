require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas]<<supply
holiday_hash[:winter][:new_years]<<supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day]<<supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key1, value1|
    puts "#{key1.to_s.capitalize!}:"
  # puts "Winter:"
    value1.each do |key2, value2|
    # puts "  #{key2.to_s.split("_").collect(&:capitalize).join(" ")}: #{value2.join(", ")}"
      puts "  #{key2.to_s.split("_").collect{|x|x.capitalize}.join(" ")}: #{value2.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.map do |season, holiday|
    holiday.map do |event, supply|
      if supply.include?("BBQ")
        arr << event
      end
    end
  end
  arr
end
