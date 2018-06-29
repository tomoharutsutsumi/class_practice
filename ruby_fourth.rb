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