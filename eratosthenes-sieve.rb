

# 配列用意
array = []
def eratosthenes(num)
   num.each do |i|
  if i % 2 == 0 && i / 2 != 1
    array << i
  elsif i % 3 == 0 && i / 3 != 1
    array << i
  elsif i % 7 == 0 && i / 7 != 1
     array << i
  
  end
end

num = gets.split.map(&:to_i)
eratosthenes(num)
