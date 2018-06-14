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
    @messanger.show_message
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