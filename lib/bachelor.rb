require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, season_data|
    if season_number == season
      season_data.each do |keys|
        keys.each do |person_key, person_value|
          if person_value == "Winner"
            full_name=keys["name"].split
            return full_name[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, season_data|
    season_data.each do |keys|
      keys.each do |person_key, person_value|
        if person_value == occupation
          return keys["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, season_data|
    season_data.each do |keys|
      keys.each do |person_key, person_value|
        if person_value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, season_data|
    season_data.each do |keys|
      keys.each do |person_key, person_value|
        if person_value == hometown
          return keys["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  data.each do |season_number, season_data|
    if season_number == season
      ages_array=[]
      season_data.each do |keys|
        keys.each do |person_key, person_value|
          if person_key == "age"
            integer_age=keys[person_key].to_f
            ages_array.push(integer_age)
          end
        end
      end
      total=0
        ages_array.each do |number|
          total += number
        end
        final_average=total.to_f / ages_array.length.to_f
        return final_average.round
    end
  end
end
