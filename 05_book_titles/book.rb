class Book
# write your code here
  attr_reader :title

  def title=(new_title)
    @title = new_title.capitalize!
    return @title
  end
end

@book = Book.new
@book.title = "inferno hole"
puts @book.title
