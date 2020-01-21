$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# def directors_totals(nds)
 # row_index = 0
#  totals = {}

#  while row_index < directors_database.length do
#    director_name = directors_database[row_index][:name]
#    totals[director_name] = 0
#    movie_index = 0

 #   while movie_index < directors_database[row_index][:movies].length do
 #     totals[director_name] += directors_database[row_index][:movies][movie_index][:worldwide_gross]
 #     movie_index += 1
 #   end

 #   row_index += 1
 # end

#  totals
# end 


def gross_for_director(director_data)
  total = 0
  index = 0

  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end


def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    name = director[:name]
    result[name] = gross_for_director(director)
    director_index += 1
  end
  result
end
