require 'pry-byebug'
class NumberToString

  def initialize(number)
    @number = number
  end

  def array
    if @number < 10
      [@number]
    else
      @number.split("")
    end

  end

  def ones_place(number, tens_place)
    if tens_place == 1
      ""
    elsif number == 1
      "one"
    elsif number == 2
      "two"
    elsif number == 3
      "three"
    elsif number == 4
      "four"
    elsif number == 5
      "five"
    elsif number == 6
      "six"
    elsif number == 7
      "seven"
    elsif number == 8
      "eight"
    elsif number == 9
      "nine"
    elsif number == 0
      ""
    end
  end

  def teens(ones, tens)
    if tens != 1
      ""
    elsif ones == 1
      "eleven"
    elsif ones == 2
      "twelve"
    elsif ones == 3
      "thirteen"
    elsif ones == 4
      "fourteen"
    elsif ones == 5
      "fifteen"
    elsif ones == 6
      "sixteen"
    elsif ones == 7
      "seventeen"
    elsif ones == 8
      "eighteen"
    elsif ones == 9
      "nineteen"
    end
  end
end