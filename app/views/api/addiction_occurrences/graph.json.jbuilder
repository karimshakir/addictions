
json.name ""
json.children do
  json.array! @addiction_occurrences.group_by {|addiction_occurence| addiction_occurence.addiction.name}.each do |addiction_name, occurrences_list|
    json.name addiction_name
    json.children do
      json.array! occurrences_list.group_by {|occurrence| occurrence.location }.each do |location, occurrences_list_by_location|
        json.name location
        json.children do
          json.array! occurrences_list_by_location.group_by {|occurrence| occurrence.craving }.each do |craving, occurrence_list_by_craving|
            if craving
              json.name "Craving"
            else
              json.name "Use"
            end
            json.children do
              json.array! occurrence_list_by_craving.group_by {|occurrence| occurrence.circumstance}.each do |circumstance, occurrence_list_by_circumstance|
                json.name circumstance
                json.children do
                  json.array! occurrence_list_by_craving.group_by {|occurrence| occurrence.created_at}.each do |created_at, occurrence_list_by_created_at|
                    json.name created_at.strftime("%a")
                    json.children do
                      json.array! occurrence_list_by_created_at.each do |occurrence|
                        json.name occurrence.created_at.strftime("%I:%M %p")
                        json.size occurrence.amount
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
