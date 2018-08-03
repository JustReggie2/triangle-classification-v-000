require 'pry'
class Triangle
  # attr_accessor :length_1, :length_2, :length_3

  def inititalize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
    binding.pry
  end

  def kind
    trutriangle = @length_1 + @length_2 > @length_3

    if self.class != trutriangle
        raise TriangleError
    else
      if @length_1 == (@length_2 && @length_3)
        :equilateral.inspect
      elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3
        :isosceles.inspect
      else
        :scalene.inspect
      end
    end
  end

  class TriangleError < StandardError
  end

end
