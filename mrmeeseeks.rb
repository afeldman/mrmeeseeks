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

def MrMeeSeeks desire=""

  puts GREETINGS.shuffle.first
  
  if desire == ""
    return "BYE!"    
  end

  desires = desire.split(' ')

  if desires.length < 3
    POOF.push "You wish: \'#{desire}\' has been fulfilled, **poof**"
  else
    tmp = desires.in_groups(2)
    first_half, second_half = tmp[0], tmp[1]
 
    MrMeeSeeks first_half.join(' ')
    MrMeeSeeks second_half.join(' ')
  end

end

query=ARGV.join(" ") || ""

puts RESPONCE.shuffle.first
puts MrMeeSeeks query
