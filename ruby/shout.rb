module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!" + " :D"
  end 

end

self.yell_angrily("WHAT")
self.yell_happily("WHAT")