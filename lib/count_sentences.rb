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
#^This line of code here is splitting the self keyword into an array bu identifying the specific RegEx to help divide the sentences
#then this causes 5 sentences and counts an empty string ("") as a sentence
#then we use the .reject method to remove any empty strings ("")
#then we used the.length to count the entire self keyword for the count_sentences method.
  end
end
