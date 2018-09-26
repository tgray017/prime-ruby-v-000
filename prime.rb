def prime?(num)
  return false if num < 0
  range = (2..Math.sqrt(num).ceil).to_a
  range.each do |x|
    range.each do |y|
      product = x * y
      return false if product == num
    end
  end
  return true
end






def prime?(num)
  return false if num < 0
  range = (2..(num/2)).to_a
  range.each do |x|
    range.each do |y|
      product = x * y
      return false if product == num
    end
  end
  return true
end


# results of puts Benchmark.measure {prime?(200)} for above method
#  0.000000   0.000000   0.000000 (  0.000045)



#def prime?(num)
#  range = (2..(num/2)).to_a
#  final_array = []
#  range.each do |x|
#    range.each do |y|
#      product = x * y
#      unless final_array.any? {|z| z == product}
#        final_array << product
#      end
#    end
#  end
#  !(final_array.any? {|number| num == number})
#end


# results of puts Benchmark.measure {prime?(200)} for above method
#  0.750000   0.010000   0.760000 (  0.764609)