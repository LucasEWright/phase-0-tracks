module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
    def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

Shout.yelling_happily("Lucas")
Shout.yell_angrily("Ivan")