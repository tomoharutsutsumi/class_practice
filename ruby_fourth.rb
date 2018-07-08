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
          last += @delim[0]
        else index % 2 != 0
          last += connector
          last += @delim[1]
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




p "kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"

class Connector

  attr_accessor :delim

  def initialize
    @connector = []
    @delim = []
  end

  def push(str)
    @connector.push(str)
  end

  def random_connect
    shuffled_connector =  @connector.shuffle
    last = ""
    shuffled_connector.each.with_index(1) do |connector, index|
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
 p connector.random_connect
 p connector.connect




p "TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT"

class Myclass

  def insert(item)
    @hoge = item
    self
  end

  def show
    puts @hoge
  end

  def showshow
    self.show
  end

end


myclass = Myclass.new
myclass.insert("ttm")
myclass.showshow




