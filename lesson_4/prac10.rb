# Problem: modify the hash so each member has an "age_group" key w/ kid/adult/senior as values
# Input/Output/Data Structure: Hash
# Edge cases/tests: no age given would be a problem, spectral/undead/immortal family members
# Algorithm: Iterate through family members, read the age, add the corresponding age group value 

munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  munsters.each do |_, info_hash|
    case info_hash["age"]
    when 0...18
        info_hash["age_group"] = "kid"
    when 18...65
        info_hash["age_group"] = "adult"
    else
        info_hash["age_group"] = "senior"
    end
  end

  p munsters