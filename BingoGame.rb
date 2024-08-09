# ビンゴカードの縦横の大きさを表す整数 3 ≦ N ≦ 21
# 抽選回数を表す整数 K

# 1.入力の処理
n, k = gets.chomp.split.map(&:to_i)
bingo_card = []
n.times do
  bingo_card << gets.chomp.split.map(&:to_i)
end
draw_numbers = gets.chomp.split.map(&:to_i)

# 2.ビンゴカードのマスを開ける処理
open = Array.new(n) { Array.new(n, false)}

# 最初から開けることができる中央のマス(0)を開ける

mid = n / 2
open[mid][mid] = true

# 抽選された数字に該当するマスを開ける
draw_numbers.each do |number|
  n.times do |i|
    n.times do |j|
      if bingo_card[i][j] == number
        open[i][j] = true
      end
    end
  end
end

# ステップ3: ビンゴの判定
bingo_count = 0

# 行をチェック
n.times do |i|
  bingo_count += 1 if open[i].all?
end

# 列をチェック
n.times do |j|
  column = n.times.map { |i| open[i][j] }
  bingo_count += 1 if column.all?
end

# 対角線をチェック
# 左上から右下への対角線をチェック
if n.times.map { |i| open[i][i] }.all?
  bingo_count += 1
end
# 右上から左下への対角線をチェック
if n.times.map { |i| open[i][n-1-i] }.all?
  bingo_count += 1
end

# ステップ4: 結果の出力
puts bingo_count
