title = "Flintstone Family Members"
spaces_to_add = (40 - title.length/2)
spaces_to_add.times do |space|
    title.prepend(' ')
end
p title