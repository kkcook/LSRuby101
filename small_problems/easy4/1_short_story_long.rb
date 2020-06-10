# frozen_string_literal: true

# Short Long Short

# Prob: write method that takes two string args,
#   the returns concatenated string in pattern of
#   'shortlongshort'
# Examples at bottom. Possible issue arising with strings of same size...
# Datastructure: strings
# Alg: compare strings and save to vars, then return concatenation

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

# Examples
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"