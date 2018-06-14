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

@myclass = Myclass.new
@myclass.start


#initializeメソッドで@messagerにインスタンスを入れたらstartでも使えるのか

#def start
#initialize
#@messanger.show_message
#end

#rankメソッドの時みたいにはならないのか