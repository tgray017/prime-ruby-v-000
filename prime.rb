require 'benchmark'
require 'bigdecimal/math'

def prime?(num)
  range = (2..(num/2)).to_a
  final_array = []
  range.each do |x|
    range.each do |y|
      product = x * y
      unless final_array.any? {|z| z == product}
        final_array << product
      end
    end
  end
  !(final_array.any? {|number| num == number})
end


