# Author::    Lukasz Wrobel 
# Url::       http://lukaszwrobel.pl/
 
# class Number
#   def initialize(value)
#     @value = value
#   end
 
#   def execute
#     @value
#   end
# end
 
# class Plus
#   def initialize(left, right)
#     @left = left
#     @right = right
#   end
 
#   def execute
#     @left.execute + @right.execute
#   end
# end
 
# class Minus
#   def initialize(left, right)
#     @left = left
#     @right = right
#   end
 
#   def execute
#     @left.execute - @right.execute
#   end
# end
 
# class Multiply
#   def initialize(left, right)
#     @left = left
#     @right = right
#   end
 
#   def execute
#     @left.execute * @right.execute
#   end
# end


# # Author::    Lukasz Wrobel 
# # Url::       http://lukaszwrobel.pl/
 
# def parse(input)
#   stack = []
 
#   input.lstrip!
#   while input.length > 0
#     case input
#       when /\A-?\d+(\.\d+)?/
#         stack << Number.new($&.to_i)
#       else
#         second, first = stack.pop(), stack.pop()
 
#     case input
#       when /\A\+/
#         stack << Plus.new(first, second)
#       when /\A\-/
#         stack << Minus.new(first, second)
#       when /\A\*/
#         stack << Multiply.new(first, second)
#       else
#         raise 'Token unknown'
#       end
#     end
 
#     input = $'
#     input.lstrip!
#   end
 
#   raise 'Syntax error' unless stack.size == 1
 
#   stack.first.execute
# end

# # main
# puts parse('4 5 2 + *')


# Parser Demo
class Parser
  def initialize(text)
    @tokens = text.scan(/\(|\)|[\w\.\*]+/)
  end

  def next_token
    @tokens.shift
  end

  def expression
    token = next_token
    if token == nil
      return nil
    elsif token == '('
      result = expression
      raise 'Expected )' unless next_token == ')'
      result
    elsif token == 'all'
      return All.new
    elsif token == 'writable'
      return Writable.new
    elsif token == 'bigger'
      return Bigger.new(next_token.to_i)
    elsif token == 'filename'
      return FileName.new(next_token)
    elsif token == 'not'
      return Not.new(expression)
    elsif token == 'and'
      return And.new(expression, expression)
    elsif token == 'or'
      return Or.new(expression, expression)
    else
      raise "Unexpected token: #{token}"
    end
  end
end

parser = Parser.new "and (and(bigger 1024)(filename *.mp3)) writable"
puts parser.expression

