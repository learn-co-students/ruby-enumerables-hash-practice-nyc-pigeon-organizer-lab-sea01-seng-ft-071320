require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = {}
  
  data.each do | trait, set |
    set.each do | k, names |
      names.each do | name |
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][trait] == nil
          pigeon_list[name][trait] = []
        end
        pigeon_list[name][trait] << k.to_s
      end
    end
  end
  
  pigeon_list
end
