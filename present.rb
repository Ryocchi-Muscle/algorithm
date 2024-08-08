# 整数 X の倍数番目の応募者はプレゼント A の当選者とする
# 整数 Y の倍数番目の応募者はプレゼント B の当選者とする

# プレゼント A と B の両方当選した人は AB
#  A だけ当選した人は A
#  B だけ当選した人は B
#  どちらも当選してない人は N

# ・1 ≦ N ≦ 1,000  1 ≦ X, Y ≦ N


# 標準入力からの値取得
input_line = gets.chomp
n, x, y = input_line.split.map(&:to_i)

# 作成したメソッド
def present(n, x, y)
 (1..n).each do |num|
  if num % x == 0 && num % y == 0
    puts "AB"
  elsif num % x == 0
    puts "A"
  elsif num % y == 0
    puts "B"
  else
    puts "N"
  end
 end
end

present(n, x, y)
