def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner << contestant["name"]
    end
end
winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestant|
  contestant.each do |contestant_hash|
    if contestant_hash["occupation"] == occupation
      name << contestant_hash["name"]
    end
  end
end
  name
end

def count_contestants_by_hometown(data, hometown)
 count = 0
 data.each do |season, contestant|
   contestant.each do |contestant_hash|
     if contestant_hash["hometown"] == hometown
       count += 1
     end
   end
 end
 count
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  age = 0
  data[season].each do |key, value|
    age += key["age"].to_f
    counter += 1
  end
  
end
