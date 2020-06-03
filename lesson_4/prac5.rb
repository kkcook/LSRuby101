# Prob: find index of first name that starts with 'Be'
# Edge cases: no names
# Data strucutre: input is array and output is int
# Algorithm: iterate through array, check if first two letters match, next if not, return index if match


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|name| name[0, 2] == "Be"}