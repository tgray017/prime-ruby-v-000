require 'pry'

def prime?(num)
  range = (2..(num/2)).to_a

  final_array = []
  range.each do |x|
    range.each do |y|
      product = x * y
      unless final_array.any? {|z| z == product}
        final_array << x * y
      end
    end
  end
  binding.pry
  !(final_array.any? {|number| num == number})
end


prime?(81)
