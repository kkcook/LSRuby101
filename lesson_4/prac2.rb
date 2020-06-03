#Problem: add up all the ages. Input is hash, output is int.
#Edge cases - empty hash
#Data structures: hash, int
#Algorithm: iterate through the hash, adding each value to the sum variable.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_sum = 0
ages.each {|_, age| age_sum += age}
p age_sum