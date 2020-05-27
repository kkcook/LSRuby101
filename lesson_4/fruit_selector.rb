produce = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
  }

  def select_fruit(produce)
    fruit_hsh = {}
    key_array = produce.keys
    counter = 0

    loop do
        break if counter == key_array.size

        current_key = key_array[counter]
        current_value = produce[current_key]

        if current_value == 'Fruit'
            fruit_hsh[current_key] = produce[current_key]
        end

        counter += 1
    end

    p fruit_hsh
  end



  
  select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}