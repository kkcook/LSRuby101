# frozen_string_literal: true

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  until dot_separated_words.empty?
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  true
end
