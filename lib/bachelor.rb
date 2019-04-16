def get_first_name_of_season_winner(data, season)
  # return first name of season winner
  data[season].each do |contestant_data|
    if contestant_data["status"].downcase == "winner"
      return contestant_data["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
# return name of contestant with specific occupation
  data.each do |season, contestant|
    contestant.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # return count of the number of contestant from a hometown
count = 0
  data.each do |season, contestant|
    contestant.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        count += 1
      end
    end
  end
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

# data structure
# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
