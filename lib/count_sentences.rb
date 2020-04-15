require 'pry'

class String

  def sentence?
    if self == self.end_with?(".")
      puts true
    else
      puts false
    end
    self.end_with?(".")
  end

  def question?
    if self == self.end_with?("?")
      puts true
    else
      false
    end
self.end_with?("?")
  end

  def exclamation?
    if self == self.end_with?("!")
      puts true
    else
      puts false
    end
self.end_with?("!")
  end

  def count_sentences
    #binding.pry

self.split(/\.|!|\?/).reject {|e| e.empty?}.length
  end
end
