# 出店する店舗の数を表す整数 N 、営業する月数を表す整数 M
n, m = gets.split.map(&:to_i)


# 1 店舗あたりの店舗の建設費用を表す整数 A、1 店舗あたりの毎月の人件費を表す整数 B、ラーメン 1 杯あたりの利益を表す整数 C

a, b, c  = gets.split.map(&:to_i)


# i 番目の店舗が M ヶ月間に販売したラーメンの杯数を表す整数 R_i


# 経費
total_cost = a + (b * m)

# 不採算な店舗の数をカウントする変数
unprofit_count = 0


# 利益が経費を上回るかどうかの処理判定
n.times do
  # M ヶ月間に販売したラーメンの杯数を表す整数 R_i
  r_i = gets.to_i
 # 各店舗の総利益
   total_profit = r_i * c
  if total_profit < total_cost
    unprofit_count += 1
  end
end

puts unprofit_count
