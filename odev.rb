#!/usr/bin/ruby
# encoding: utf-8
class GeometricObject
    attr_reader :color, :filled
         def initialize(color,filled)
           @color, @filled = color, filled
         end
         def watcolor
           @color
         end
         def watfilled
           @filled 
         end
         def to_s
           "#{@color}"
           "#{@filled}"
         end
     end
     class Circle < GeometricObject
      attr_reader :r
       NAME = 'circle'
         def initialize(*coords, r)
           super(*coords)
           @r=r
         end
         def getArea 
          Math::PI * @r**2       
         end
         def getPerimeter
           2 * Math::PI * @r
         end
         def getDiameter
           puts "Dairenin çapı #{2*@r} "
         end
         def to_s
             "#{getDiameter}Yarıçapı: #{@r}, renk = #{watcolor},iç = #{watfilled} özelliklerine sahip olan "
         end
     end
     class Rectangle < GeometricObject
          attr_reader :x, :y
           NAME = 'rectangle'
         def initialize(*coords,x,y)
             super(*coords)
             @x = x
             @y = y
         end
         def getArea()
             @x * @y
         end
         def getPerimeter()
             2 * @x + 2 * @y
         end
         def to_s
            "(#{@x},#{@y}) kenarlarına sahip ,renk : #{watcolor},iç = #{watfilled} özelliklerine sahip olan"
         end
     end    
     class TEST < GeometricObject
         def main 
            a = Circle.new("Kırmızı", "Dolu",3)
            b = Rectangle.new("Sarı", "Boş",4,5)
             [a,b].each do |shape|
                 puts "#{shape} #{shape.class} şeklinin \n Alanı: #{shape.getArea}\n Çevresi: #{shape.getPerimeter}"
             end
         end           
     end
          a = TEST.new(@watcolor,@watfilled)
          a.main if FILE == $PROGRAM_NAME