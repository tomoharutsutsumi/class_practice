class Myclass
  def initialize(name)
    @name = name
  end

  def return
    @name
  end

  def call
     named = @name
     p named
  end
end


myclass = Myclass.new("TTM")
myclass.call



class Otherclass
  def initialize(qwe)
    @myclass_name = qwe.call
  end

  def calling
    p "#{@myclass_name}ですよ"
  end
end


p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
otherclass = Otherclass.new(myclass)
p "RRRRRRRRRRRRRR"
otherclass.calling


class Yourclass
  def initialize(abc, efg)
    abc.call
    efg.calling
    @abc = abc
    @efg = efg
  end


  def double_call
     p @abc.call
     p @efg.calling
  end
end



p "YYYYYYYYYYYYYYYYYYYYYYYYYYY"
yourclass = Yourclass.new(myclass, otherclass)

p "EEEEEEEEEEEEEEEEEEEEEEE"
yourclass.double_call



p"RTYRRRRRRRRRRRRRRRRRYYYYYYYYYY"

#class Palette

##  attr_accessor :left_color

 ####   when ["red", "yellow"], ["yellow", "red"]
  #    return p "orange"
 #   when ["blue", "yellow"], ["yellow", "blue"]
 #     return p "green"
      #begin
    #else
    #when right != "red" && "blue" && "yellow" || left != "red" && "blue" && "yellow"
      #rescue => e
       # puts e
      #raise "未対応の色です:"
##    end
 # end

#


#palette = Palette.new
#palette.left_color = "red"

#


















class Palette
  attr_accessor :right_color
  attr_accessor :left_color



  def mazemaze
    case [self.right_color, @left_color ]
    when ["red", "blue"], ["blue", "red"]
       "purple"
    when ["red", "yellow"], ["yellow", "red"]
       "orange"
    when ["blue", "yellow"], ["yellow", "blue"]
       "green"
    end
  end

  def mazemaze_int

    if mazemaze == "purple"
       1
    elsif self.mazemaze == "orange"
      2
    else
      3
    end
  end

end


palette = Palette.new
palette.right_color = "red"
palette.left_color = "blue"
p palette.mazemaze


p "UUUUUUUUUUUUUUU"

palette.right_color = "yellow"
p palette.mazemaze



p "EEEEEEEEEEEEEEEEEEEEEEEEEEEE"

p palette.mazemaze_int

#######################
#def right_color("red")
 # @right_color = "red"
#end

#def right_color
#  @right_color
#end




p "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"

class Palette
  attr_accessor :right_color
  attr_accessor :left_color


  def mazemaze
    array_right_color = ["red", "blue", "yellow"]
    array_left_color = ["red", "blue", "yellow"]
    case [@right_color, @left_color]
    when ["red", "blue"], ["blue", "red"]
       "purple"
    when ["red", "yellow"], ["yellow", "red"]
       "orange"
    when ["blue", "yellow"], ["yellow", "blue"]
       "green"
    end
       e = Exception.new("未対応の色です: #{@right_color}") if array_right_color.include?(@right_color) == false
       e = Exception.new("未対応の色です: #{@left_color}") if array_left_color.include?(@left_color) == false
  end


end



palete = Palette.new
palette.left_color ="yellow"
palette.right_color = "blu"

palette.mazemaze


































