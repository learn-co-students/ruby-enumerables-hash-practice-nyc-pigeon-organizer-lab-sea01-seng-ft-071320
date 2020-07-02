require 'pry'
def nyc_pigeon_organizer(data)
  unqiue_names = []
  data.each_with_object({}) do | (key, value), final|   #key value pair loop with a final result of hash
    value.each do |array_key, bird_names|  #loop down to the value level of arrays of names
      bird_names.each do |name|

        if !final[name] #if there is no final array of Name, create the Name array
          #final[name] = {} #{:color => [], :gender => [], :lives => []}   #create a hash with keys based on names with
          final[name] = {:color => [], :gender => [], :lives => []}   #create a hash with keys based on names with
        end #end if statement


      #  if !final[name][key]
      #    final[name][key] = []
      #  end

        final[name][key] << array_key.to_s
      end #end loop of names
    end #end loop of values
  end #end loop of each_with_object


end  #end method



=begin
"Theo" = pigeon_data[:color][:purple][0], [:gender][:male][1] =>theo
find all the names in the hash of arrays
once all have all names, compare if name is in a key value
if yes (name is in key value), give the new key has the value of the old key
hash of hash of arrays

end




pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
=end
