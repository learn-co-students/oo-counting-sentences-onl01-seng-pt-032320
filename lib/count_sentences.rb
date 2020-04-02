require 'pry'

class String

  def sentence?
   self.end_with?('.')
  end

  def question?
   self.end_with?('?')
  end

  def exclamation?
   self.end_with?('!')
  end

  def count_sentences
  i = 0
    a = self.split(/[!+.?]/) ## breaks on !, ? and . into array of strings
    a.each do |str|
      if str !=  ''
        i = i + 1  # count the non-empty strings
      end
    end
    return i
  end
end