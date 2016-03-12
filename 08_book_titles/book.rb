class Book

  def title=(t)
    exceptions = "and or if on under the a an over the of in".split(" ").map 
    t = t.split(" ")
    t.map! do |word|
      if exceptions.any? { |exception| exception == word }
        word 
      else
        word.capitalize
      end
    end
    t[0] = t.first.capitalize
    @title = t.join(" ")
  end

  def title
      @title 
  end

end