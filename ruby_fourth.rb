class Connector

  attr_accessor :delim

  def initialize
    @connector = []
  end

  def push(str)
    @connector.push(str)
    #@connector.inspect
  end

  def connect
    @connector.map { |str| str + @delim }
  end

end

connector = Connector.new
connector.push("suzuki")
connector.push("tanaka")
p connector.push("yyyyyy")
##p connector.connect