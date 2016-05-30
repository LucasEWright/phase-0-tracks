def hamsterinfo
    puts "what's your hamster's name?"
    name = gets.chomp
    puts "what volume is your hamster?"
    volume = gets.chomp
    volume = volume.to_i
    puts "what's your fur color"
    color = gets.chomp
    puts "Is your hamster a good adoption candidate?"
    adoption = gets.chomp
    puts "How old do you think your hamster is?"
    age = gets.chomp
    age = age.to_i
    if age <1
        age = nil
    end

    puts "Your hamster's name is #{name}. Its volume is #{volume}. Its fur is #{color}."
    puts "Your adoption candidacy is set to #{adoption}."
    if age == nil
        puts "You're not sure how old he is"
    else 
        puts "Your hamster is #{age}"
    end
end

hamsterinfo