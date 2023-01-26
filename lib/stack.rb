require 'pry'

class Stack

  def initialize
    @stack = []
  end

  def push(value)
      @stack.push(value) 
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end


end


def balancing_parentheses(string)
  stack = Stack.new


  string.chars do |c| 

    if c == '('
      stack.push(c)
    elsif c == ')'
      stack.peek == '(' ? stack.pop : stack.push(c)
    end

  end

  stack.size

end


# binding.pry

