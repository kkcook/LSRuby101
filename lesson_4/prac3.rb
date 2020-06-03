# Prob: remove all people with age 100 and greater
# Input and output are hashes
# Select pairs with age >100 and return.

ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10 }

ages.keep_if { |_, age| age > 100 }

p ages
