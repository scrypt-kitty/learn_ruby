class Book
# write your code here
  attr_reader :title

  def title=(new_title)
    @title = new_title.capitalize!
    # return @title

    splitter = @title.split(" ")

    if splitter[0] == "the"
      splitter[0] = "The"
    end

    if splitter[0] == "over"
      splitter[0] = "Over"
    end

    for each in splitter
      if each == "and" || each == "the" || each == "over" || each == "in" || each == "of" || each == "a" || each == "an"
      else
        each.capitalize!
      end
    end

    @title = splitter.join(" ")
    return new_title
  end
end

@book = Book.new
@book.title = "inferno hole"
puts @book.title
