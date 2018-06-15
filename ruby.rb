class Messanger

  def set_message(words)
    @words = words
  end

  def show_message
    puts @words
  end

  def message
    puts @words
  end
end

p "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"

@messanger = Messanger.new
@messanger.set_message("これはテストです")
@messanger.show_message
@messanger.message


p "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"

class Myclass
  def initialize(name)
    @messanger = name #ここにある@messangerと上の@messangerは別物の理解
  end

  def start
    begin_start
    @messanger.show_message
    end_start
  end



private

  def begin_start
     p "--begin start--"
  end

  def end_start
    p "--end start--"
  end
end


p "WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"

@myclass = Myclass.new(@messanger) #@messagerと@myclassはどのような関係にあるのか
@myclass.start

p "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"

puts @messanger.message
@messanger.set_message("こんにちは")

p "QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"

@myclass.start

p "QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"











