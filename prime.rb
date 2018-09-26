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

puts Benchmark.measure {prime?(200)}

# results of puts Benchmark.measure {prime?(200)}
#  0.060000   0.000000   0.060000 (  0.055453)

def prime_a?(num)
  range = (2..(num/2)).to_a
  range.each do |x|
    range.each do |y|
      product = x * y
      return false if product == num
    end
  end
  return true
end

puts Benchmark.measure {prime_a?(200)}

# results of puts Benchmark.measure {prime?(200)}
#  0.000000   0.000000   0.000000 (  0.000019)
