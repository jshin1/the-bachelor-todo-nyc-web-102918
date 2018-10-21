require 'pry'

def get_first_name_of_season_winner(data, season)
  full_name = nil
  data[season].each do |info|
    if info["status"] == "Winner"
      full_name = info["name"].split(' ')
    end
  end
  full_name[0]
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |season, season_data|
    season_data.each do |info|
      if info["occupation"] == occupation
        name = info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  people = []
  data.each do |season, season_data|
    season_data.each do |info|
      if info["hometown"] == hometown
        people << info["name"]
      end
    end
  end
  people.length
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, season_data|
    season_data.each do |info|
      if info["hometown"] == hometown
        occupation << info["occupation"]
      end
    end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
  people = []
  data.each do |the_season, season_data|
    if the_season == season
      season_data.each do |info|
        people << info["age"].to_i
      end
    end
  end
  people.sum.fdiv(array.length)
end
