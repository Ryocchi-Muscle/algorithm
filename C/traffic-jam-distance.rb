# 車の数を表す整数 Nと渋滞を定義する整数 M
n, m = gets.split.map(&:to_i)


# 先頭から i 番目の車
# i = gets.to_i

# 車間距離を格納する配列
distance = []

# 車間距離を配列に格納する処理
distance = (n -1).times.map do
  gets.to_i
end


# 渋滞した距離を加算する変数の初期値設定
d = 0
# 条件分岐
distance.each do |dis|
  if dis <= m
    d += dis
  else
    next
  end
end

p d
