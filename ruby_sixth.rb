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


  def log(str)
    t = Time.now
    puts "#{t}:#{str}"
  end

private

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
            last += @delim[0]
          elsif index % 2 == 0
            last += connector
            last += @delim[1]
          end
        end
    end
    last
  end
end


connector = Connector.new
connector.log("ttm")






