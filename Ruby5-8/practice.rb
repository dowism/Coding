

class Rectangle
  def initialize(a,b)
    @length=a
    @width=b
  end
  def area
    puts @length*@width
  end
end

seth=Rectangle.new(2,4)
puts seth.class
seth.area
