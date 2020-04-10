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
    sum = 0
    self.split(".").each do |maybe_sentence|
      if maybe_sentence.length == 0
        continue
      end
      maybe_sentence.split("?").each do |maybe_sentence2|
        if maybe_sentence2.length == 0
          continue
        end
        maybe_sentence2.split("!").each do |maybe_sentence3|
          if maybe_sentence3.length > 0
            sum += 1
          end
        end
      end
    end
    sum
  end

end
