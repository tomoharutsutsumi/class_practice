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




#インスタンス変数はインスタンスが入っているからインスタンス変数なのではなく、class内の他のメソッドでも使えるという意味



