class Messanger
  def show_message
    puts 'this is test'
  end
end



@messanger = Messanger.new
@messanger.show_message


p "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"

class Myclass
  def initialize
    @messanger = Messanger.new
  end

  def start
    p "--begin start--"
    @messanger.show_message
    p "--end start--"
  end

  def begin_start
     p "--begin start--"
  end

  def end_start
    p "--end start--"
  end
end

@myclass = Myclass.new
@myclass.begin_start
@myclass.start
@myclass.end_start


#initializeメソッドで@messagerにインスタンスを入れたらstartでも使えるのか

#def start
#initialize
#@messanger.show_message
#end

#rankメソッドの時みたいにはならないのか