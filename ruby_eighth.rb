
class Tokenizer

  def initialize(strs)
    @items = strs
    @items += ","
  end

  def tokenize
     one_chara_items = []
     stocked_items = []
     @items.each_char do |item|
      if item == ","
        stocked_items.push(one_chara_items.join)
        one_chara_items = []
      else
        one_chara_items.push(item)
      end
     end
     @stocked_items = stocked_items
  end

  def tokens
    @stocked_items
  end


end

tokenizer = Tokenizer.new("佐藤,田中,鈴木,山本")
tokenizer.tokenize
p tokenizer.tokens








