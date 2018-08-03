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
    self.common_connect(shuffled_connector)
  end

  def connect
    self.common_connect(@connector)
  end

  def common_connect(connectors)
    last = ""
    connectors.each.with_index(1) do |connector, index|
      last += index.to_s
      last += "."
        if index == connectors.size
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
