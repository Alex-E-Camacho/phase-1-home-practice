require "pry"

def convert_table(table)
  keys = table.shift
    table.map do |arr|
      arr.insert(0, keys[0])
      arr.insert(2, keys[1])
      arr.insert(4, keys[2])
      arr.insert(6, keys[3])
    end
    
  new_array = []

   table.each do |arr|
     new_array << Hash[arr] # This causes a MAJOR error. Why?!
   end
  new_array
end

table_data = [
  ["first_name", "last_name", "city", "state"],
  ["Elisabeth", "Gardenar", "Toledo", "OH"],
  ["Jamaal", "Du", "Sylvania", "OH"],
  ["Kathlyn", "Lavoie", "Maumee", "OH"]
]

p convert_table(table_data)