require 'pry-byebug'
class BraceChecker

  def initialize(array)
    @array = array
    @first_brackets_array = []
  end

  def valid

    @array.each do |str|

      str.each_char.with_index do |char, i|

        if char == "{" || char == "[" || char == "("
          @first_brackets_array << char
        elsif char_is_not_valid(char)
          puts 0
          break
        elsif i == str.length - 1
          puts 1
          break
        end
      end

    end
  end

  def char_is_not_valid(char)
    if (char == '}' && @first_brackets_array.last != '{') || (char == ']' && @first_brackets_array.last != '[') || (char == ')' && @first_brackets_array.last != '(')
      return true
    else
      @first_brackets_array.pop
      return false
    end
  end
end

array = ['({[]}}']

BraceChecker.new(array).valid