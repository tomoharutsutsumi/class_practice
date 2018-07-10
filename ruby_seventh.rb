class Tokenizer

  def initialize(strs)
    @items = strs
  end

  def tokenize
    @tokenized_itmes = @items.split
  end

  def tokens
    @tokenized_itmes
  end


end

tokenizer = Tokenizer.new("佐藤,田中,鈴木,山本")
tokenizer.tokenize
p tokenizer.tokens