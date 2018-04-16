require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, cont_data|
    if seasons == season
      cont_data.each do |indv_data|
        if indv_data["status"] == "Winner"
          return indv_data["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, cont_data|
    cont_data.each do |indv_data|
      if indv_data["occupation"] == occupation
        return indv_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, cont_data|
    cont_data.each do |indv_data|
      if indv_data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, cont_data|
    cont_data.each do |indv_data|
      if indv_data["hometown"] == hometown
        return indv_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |seasons, cont_data|
    if seasons == season
      cont_data.each do |indv_data|
      age_array << indv_data["age"].to_i
      end
    end
  end
avg_number = age_array.inject(0, :+).to_f/age_array.size
avg_number.round
end
