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

class Palette

  attr_accessor :right_color
  attr_accessor :left_color

  def mazemaze(right, left)
    case [right, left]
    when ["red", "blue"], ["blue", "red"]
      p :purple
    when ["red", "yellow"], ["yellow", "red"]
      p :orange
    when ["blue", "yellow"], ["yellow", "blue"]
      p :green
      begin
    else
    #when right != "red" && "blue" && "yellow" || left != "red" && "blue" && "yellow"
      rescue => e
        puts e
      #raise "未対応の色です:"
    end
    end
  end

end



palette = Palette.new
palette.right_color = "blu"
palette.left_color = "yellow"

palette.mazemaze(palette.right_color, palette.left_color)








