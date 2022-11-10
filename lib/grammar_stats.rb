class GrammarStats
  def initialize
    @total_count = 0.0
    @successful_count = 0.0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @total_count = @total_count + 1
    if !!(text[0] =~ /[A-Z]/) && !!(text[-1] =~ /[!.?]/)
      @successful_count = @successful_count + 1
      return true
    else
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return (@successful_count / @total_count) * 100
  end
end
