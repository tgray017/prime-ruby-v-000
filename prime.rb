require 'benchmark'

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

puts Benchmark.measure {prime?(100)}

# results of puts Benchmark.measure {prime?(100)}
#  0.060000   0.000000   0.060000 (  0.055453)

def prime?(num)
  range = (2..(num/2)).to_a
  range.each do |x|
    range.each do |y|
      product = x * y
      if product == num
        true
      else
        false
      end
    end
  end
end

