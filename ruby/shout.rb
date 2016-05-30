#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#    def self.yelling_happily(words)
#    words + "!!!" + " :)"
#  end
#end

#Shout.yelling_happily("Lucas")
#Shout.yell_angrily("Ivan")

module Shout
    def yell_angrily(words)
    words + "!!!" + " :("
  end
    def yelling_happily(words)
    words + "!!!" + " :)"
  end
end


class Boyfriend
	include Shout
end

class Ex_Boyfriend
	include Shout
end

boyfriend = Boyfriend.new
bird.take_off("Ivan")

#____Driver Code______
ex_boyfriend = Ex_Boyfriend.new
ex_boyfriend.yell_angrily("Dummy")