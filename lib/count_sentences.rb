require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_words = self.split(/[.?!]/).reject {|string| string.empty?}
    
    return split_words.length
  
  end
end