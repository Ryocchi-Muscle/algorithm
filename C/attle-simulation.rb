#  1行目に戦闘回数の N と、最初のあなたのレベル l が与えられます。
N, l = gets.split.map(&:to_i)


# 続く N 行の各行には i 番目 (1 ≦ i ≦ N) の戦闘相手のレベルが x_i であるという情報が与えられます。
# 入力された戦闘相手のレベルを格納しておくための配列
x_i = []


N.times do
  x_i << gets.to_i
end

# 配列の中身の数値をループで回す。

x_i.each do |opponet_level|
  if l > opponet_level
     l += opponet_level / 2
  elsif l < opponet_level
      l = l / 2
  else
    # 引き分けの場合はレベルに変動なし
    next
  end
end

puts l
