#class Connector

  #attr_accessor :delim

  #def initialize
    #@str = ""
 # end

 # def push(str)
    #@str << str
  #end



#end


#connector = Connector.new
#connector.push("wwwww")
#p connector.push("EEEEEEEEEE")






#別作戦
#class Connector < Array

 #attr_accessor :delim



#end

#connector = Connector.new
#connector.push("tanaka")
# p connector.push("EEEEEEEEEE")




class Connector

  attr_accessor :delim

  def initialize
    @connector = []
  end

  def push(str)
    @connector.push(str)
  end

  def connect
    @connector.join(@delim)
  end

end

connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
connector.push("yyyyyy")
connector.delim = ","
p connector.connect






















