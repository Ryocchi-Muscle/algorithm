# 注文した品数: n, 摂取カロリーの上限を表す整数 : c

n, c = gets.split.map(&:to_i)

# メニューの人気順位 i,  i 番目のメニューの人気順位:r_i,カロリーを表す整数 :c_i

# total_calory,top10をカウントする変数の初期化
total_calory = 0
top_10_count = 0


# N行の入力を処理
n.times do
  r_i, c_i = gets.split.map(&:to_i)

# トップ10のメニューならばカロリーを加算
  if r_i <= 10
    if total_calory + c_i  <= c
      total_calory += c_i
      top_10_count += 1
    else
      break
    end
  end
end


# 結果の出力
if  top_10_count == 10
  puts "Yes"
else
  puts top_10_count
end
