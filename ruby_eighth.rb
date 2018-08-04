
class Tokenizer

  def initialize(strs)
    @strs = strs
    @strs += ","
  end

  def tokenize
     one_chara_items = []
     stocked_items = []
     @strs.each_char do |ch|
      if ch == ","
        stocked_items.push(one_chara_items.join)
        one_chara_items = []
      else
        one_chara_items.push(ch)
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








