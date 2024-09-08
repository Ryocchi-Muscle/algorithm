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

# 条件は、通常実装において明示的にチェックする必要はないらしい
# 例外的な場合
# 明示的な指示がある場合は、問題文で「入力が条件を満たさない場合はエラー処理を行うこと」などの指示がある場合は、適切なチェックとエラーハンドリングが必要。


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
