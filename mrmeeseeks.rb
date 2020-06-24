#!/usr/bin/env ruby

class Array;
  def in_groups num_groups
    return [] if num_groups == 0
    slice_size = (self.size/Float(num_groups)).ceil
    return self.each_slice(slice_size).to_a
  end
end

GREETINGS=["I'm MrMeeseeks look at me!", "look at me! I'm MrMeeseeks!"]
RESPONCE=["Ohhh ok!", "Oh Yeaahh!", "Yes Ma'am!", "OOOOHHHH Yeah! can do!", "Yes Siree!"]

POOF=[]

def MrMeeSeeks desire=[]
  
  if not desire.any?
    return "BYE!"    
  end

  if desire.length < 3
    puts GREETINGS.shuffle.first
    POOF.push "You wish: \'#{desire.join(" ")}\' has been fulfilled, **poof**"
  else
    tmp = desire.in_groups(2)
    first_half, second_half = tmp[0], tmp[1]

    MrMeeSeeks first_half
    MrMeeSeeks second_half
  end

end

query=ARGV || []

puts RESPONCE.shuffle.first
puts MrMeeSeeks query
