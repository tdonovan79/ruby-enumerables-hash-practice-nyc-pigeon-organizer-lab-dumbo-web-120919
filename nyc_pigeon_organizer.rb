def nyc_pigeon_organizer(data)
  #empty hash for pigeon data
  pigeon_data = {}
  #iterate through categories
  data.each do |categories, value|
    #iterate though attributes
    value.each do |attributes, names|
      #iterate thorugh names
      names.each do |name|
        #if no pigeon name key, create
        if pigeon_data[name] == nil
          pigeon_data[name] = {}
        end
        #if no pigeon attribute key, create
        if pigeon_data[name][categories] == nil
          pigeon_data[name][categories] = []
        end
        #add attribute to name/category as string
        pigeon_data[name][categories] << attributes.to_s
      end
    end
  end
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