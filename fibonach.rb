def fibonacchi(n)
  if n == 1 || n == 2
    1
  else
    fibonacchi(n-2) + fibonacchi(n-1)
  end
end

n = 1

puts fibonacchi(n)

(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacchi(i)}"
end

# 指定番のフィボナッチ数を求めるメソッドを定義
def fibonacci(num)
  # 再帰終了条件
  if num == 0
    return 0
  # 再帰終了条件
  elsif num == 1
    return 1
  else
    # 再帰呼び出し
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

# 第 0 項から第 9 項までを出力
(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacci(i)}"
end
