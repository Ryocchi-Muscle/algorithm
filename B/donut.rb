# 縦マス H, 横マス W
h, w = gets.split.map(&:to_i)

# 地上絵を2次元配列に読み込む
grid  = []
h.times do
  grid << gets.chop
end

# ドーナツの数をカウントする変数
donut_count = 0

# ドーナツの中心になり得るマスをループでチェック
(1...h-1).each do |i|  # 行を固定して
  (1...w-1).each do |j| # その行の中で列を動かす
    # grid[i][j] が中心の白マス "." で、周囲8マスがすべて黒 "#" かどうかをチェック
    if grid[i][j] == '.' &&
       grid[i-1][j-1] == '#' && grid[i-1][j] == '#' && grid[i-1][j+1] == '#' &&
       grid[i][j-1] == '#' && grid[i][j+1] == '#' &&
       grid[i+1][j-1] == '#' && grid[i+1][j] == '#' && grid[i+1][j+1] == '#'

      # ドーナツの数をカウント
      donut_count += 1
    end
  end
end


# 結果出力
puts donut_count
