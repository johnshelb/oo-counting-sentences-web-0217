require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    a=self.split(/[.?!]/)
    binding.pry
    a.select! do |ele|
      if ele
        ele.length>0
      end
    end
    a.count
  end
end
