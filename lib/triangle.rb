require 'pry'
class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end
#binding.pry
  def trutriangle
    (@length_1 + @length_2 > @length_3 && @length_2 + @length_3 > @length_1 && @length_1 + @length_3 > @length_2) && (@length_1.positive? && @length_2.positive? && @length_3.positive?)
  end

  def kind
    if self.trutriangle == false
      #binding.pry
        raise TriangleError

    else
      if @length_1 == @length_2 && @length_2 == @length_3
        :equilateral
      elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
