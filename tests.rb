
@years = [2020, 2030, 2021, 1979, 2000, 2021, 2020, 2030]
@years = @years.uniq
@years.sort!{ |a,b| b <=> a }

puts @years
