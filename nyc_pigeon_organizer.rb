def nyc_pigeon_organizer(data)
  #empty hash for pigeon data
  pigeon_data = {}
  #iterate through categories
  data.each do |categories, attributes|
    #iterate though attributes
    attributes.each do |attributes, names|
      #iterate thorugh names
      names.each do |name|
        pigeon_data[name][categories] = attributes
      end
    end
  end
  puts pigeon_data
  return pigeon_data
end
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
nyc_pigeon_organizer(pigeon_data)