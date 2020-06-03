# Problem: pick out the minimum age from a family hash
# input is hash, output is int
# Make family age values into array and return the smallest value
# Edge cases is empty family hash...

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.values.min
p min_age
