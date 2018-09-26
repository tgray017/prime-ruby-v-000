require 'pry'

def prime?(num)
  range = (2..(num/2)).to_a

  final_array = []
  range.each do |x|
    range.each do |y|
      final_array << x * y
    end
  end
  
  !(final_array.any? {|number| num == number})
  binding.pry
end


prime?(81)
