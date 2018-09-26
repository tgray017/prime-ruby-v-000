def prime?(num)
  range_x = (2..num).to_a
  range_y = (2..num).to_a
  
  final_array = []
  range_x.each do |x|
    range_y.each do |y|
      final_array << x * y
    end
  end
  
  !(final_array.any? {|number| num == number})
  
end