# 折り紙の枚数を表す整数 n, 1 辺の長さを表す整数 d
n,d = gets.split.map(&:to_i)

puts n,d

# 基本の折り紙面積
total_area = d * d

# 重なりの部分を処理する
(n - 1).times do
  overlap = gets.to_i
  total_area += d * d - overlap * d
end

puts total_area


# x軸の長さを求める
n.times do |dis|
  if 2 <= dis <= 10

   d += dis/2
   puts d
  end
end

# 面積を求める
suqare = d *
# y軸の長さ
d


# 面積出力
puts suqare

d * (d + d - overlap)
