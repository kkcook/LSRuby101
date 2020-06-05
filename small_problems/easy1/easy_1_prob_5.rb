#Reverse It

# Prob: Write a method that takes a string and returns new reversed words string
# Examples: 'Hello World' => 'World Hello'
# Datastructure: array
# Algorithm: Send words to array, reverse it, send back to new string

def reverse_sentence(sentence)
    sentence.split.reverse.join(' ')
end

p reverse_sentence('I love you')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'