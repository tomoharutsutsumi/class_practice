class Connector

  attr_accessor :delim

  def initialize
    @connector = []
  end

  def push(str)
    @connector.push(str)
  end

  def connect
    @connector.each_with_index do |connector, index|
      if index == @connector.size - 1
         print connector + "\n"
      else
         print connector + @delim
      end
    end
  end

end

connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
connector.push("yyyyyy")
connector.delim = ","
connector.connect


p "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRyyyyy"

class Connector

  attr_accessor :delim

  def initialize
    @connector = []
  end

  def push(str)
    @connector.push(str)
  end

  def connect
    last = ""
    @connector.each_with_index do |connector, index|
      if index == @connector.size - 1
        last += connector
      else
        last += connector
        last += @delim
      end
    end
    last
  end

end


connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
connector.push("yyyyyy")
connector.delim = ","
 p connector.connect



p "EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"

class Connector

  attr_accessor :delim

  def initialize
    @connector = []
    @delim = []
  end

  def push(str)
    @connector.push(str)
  end

  def connect
    last = ""
    @connector.each_with_index do |connector, index|
      if index == @connector.size - 1
        last += connector
      else
        if index % 2 == 0
          last += connector
          last += "#{@delim[0]}"
        elsif index % 2 != 0
          last += connector
          last += "#{@delim[1]}"
        end
      end
    end
    last
  end
end

connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
connector.push("yyyyyy")
connector.push("hhhhhh")
connector.push("wwwwwwwwwww")
connector.delim.push(",")
connector.delim.push(";")
 p connector.connect


p "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"


class Connector

  attr_accessor :delim

  def initialize
    @connector = []
    @delim = []
  end

  def push(str)
    @connector.push(str)
  end

  def connect
    last = ""
    @connector.each_with_index do |connector, index|
    index += 1
    last += index.to_s
    last += "."
      if index == @connector.size
        last += connector
      else
        if index % 2 != 0
          last += connector
          last += "#{@delim[0]}"
        elsif index % 2 == 0
          last += connector
          last += "#{@delim[1]}"
        end
      end
    end
    last
  end
end



connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
connector.push("yyyyyy")
connector.push("hhhhhh")
connector.push("wwwwwwwwwww")
connector.push("tttttttttttttttt")
connector.delim.push(",")
connector.delim.push(";")
 p connector.connect





