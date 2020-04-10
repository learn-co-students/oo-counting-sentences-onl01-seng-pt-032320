require 'pry'

class String

  def sentence?
    if (self.end_with? ("."))
      return true
    else
      return false 
    end 
  end

  def question?
     if (self.end_with? ("?"))
      return true
    else
      return false 
    end 
  end

  def exclamation?
    if (self.end_with? ("!"))
      return true
    else
      return false 
    end 
  end

  def count_sentences
    array = []
    sentence_count = 0 
    if (self.end_with? ("."))
      sentence_count += 1 
    end 
    array << self.split(". ")
    array << self.split("? ")
    array << self.split("! ")
    sentence_count = sentence_count + array.size
    if !(self.end_with? (".")) && !(self.end_with? ("?")) && !(self.end_with? ("!"))
      return 0 
    end 
    return sentence_count
  end
end