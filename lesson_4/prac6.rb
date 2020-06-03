# Prob: shorten each name to first three chars
# Input and output is string array
# Iterate though array and mutate original string, using map to get only first 3 chars
# Edge cases: strings less than three chars...

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0, 3]}

p flintstones