
# data = '{"chicago":{"date":"2010-10-24","daily_avg_high":59.4,"daily_avg_low":39.8,"daily_avg_precip":0.105},"austin":{"date":"2010-10-24","daily_avg_high":79,"daily_avg_low":54.5,"daily_avg_precip":0.13791666666666666},"anchorage":{"date":"2010-10-24","daily_avg_high":36.6,"daily_avg_low":22.9},"boston":{"date":"2010-10-24","daily_avg_high":58.6,"daily_avg_low":43.9,"daily_avg_precip":0.1275},"honolulu":{"date":"2010-10-24","daily_avg_high":86,"daily_avg_low":73,"daily_avg_precip":0.055},"phoenix":{"date":"2010-10-24","daily_avg_high":85.4,"daily_avg_low":61.5,"daily_avg_precip":0.01875},"la":{"date":"2010-10-24","daily_avg_high":77.5,"daily_avg_low":57.2,"daily_avg_precip":0.01916666666666667},"new_york":{"date":"2010-10-24","daily_avg_high":61.1,"daily_avg_low":47.5,"daily_avg_precip":0.14333333333333334}}'
#
# historicalData = JSON.parse(data)

# chicago = City.create(name: "Chicago", state: "IL")
# austin = City.create(name: "Austin", state: "TX")
# boston = City.create(name: "Boston", state: "MA")
# honolulu = City.create(name: "Honolulu", state: "HI")
# phoenix = City.create(name: "Phoenix", state: "AZ")
# la = City.create(name: "Los_Angeles", state: "CA")
# ny = City.create(name: "New_York", state: "NY")

# historical_data = {
#   "Chicago"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>59.4, "daily_avg_low"=>39.8, "daily_avg_precip"=>0.105},
#   "Austin"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>79, "daily_avg_low"=>54.5, "daily_avg_precip"=>0.13791666666666666},
#   "Boston"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>58.6, "daily_avg_low"=>43.9, "daily_avg_precip"=>0.1275},
#   "Honolulu"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>86, "daily_avg_low"=>73, "daily_avg_precip"=>0.055},
#   "Phoenix"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>85.4, "daily_avg_low"=>61.5, "daily_avg_precip"=>0.01875},
#   "Los_Angeles"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>77.5, "daily_avg_low"=>57.2, "daily_avg_precip"=>0.01916666666666667},
#   "New_York"=>
#     {"date"=>"2010-10-24", "daily_avg_high"=>61.1, "daily_avg_low"=>47.5, "daily_avg_precip"=>0.14333333333333334}
#   }

# historical_data = {
#   "Chicago":
#     {"date":"2010-10-25","daily_avg_high":59,"daily_avg_low":39.6,"daily_avg_precip":0.1048},
#   "Austin":
#     {"date":"2010-10-25","daily_avg_high":78.7,"daily_avg_low":54.2,"daily_avg_precip":0.1364},
#   "Boston":
#     {"date":"2010-10-25","daily_avg_high":58.3,"daily_avg_low":43.7,"daily_avg_precip":0.1272},
#   "Honolulu":
#     {"date":"2010-10-25","daily_avg_high":85.9,"daily_avg_low":73,"daily_avg_precip":0.0556},
#   "Phoenix":
#     {"date":"2010-10-25","daily_avg_high":85,"daily_avg_low":61.1,"daily_avg_precip":0.018799999999999997},
#   "Los_Angeles":
#     {"date":"2010-10-25","daily_avg_high":77.3,"daily_avg_low":57,"daily_avg_precip":0.0196},
#   "New_York":
#     {"date":"2010-10-25","daily_avg_high":60.8,"daily_avg_low":47.3,"daily_avg_precip":0.1436}
#   }


def create_historical_conditions(data_set)
  data_set.each do |city_name, city_data|
    city = City.find_by(name: city_name)
    city.historical_conditions << HistoricalCondition.create(city_data)
  end
end

create_historical_conditions(historical_data)
