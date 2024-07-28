# スタックオーバーフローが発生したコード → 原因n=0のときの条件分岐が抜けていた

def fibonacchi(n)
  if n == 0|| n == 1 || n == 2
    1
  else
    fibonacchi(n-2) + fibonacchi(n-1)
  end
end

(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacchi(i)}"
end
