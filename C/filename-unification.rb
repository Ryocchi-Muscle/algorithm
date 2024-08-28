# 入力された文字列を取得
s = gets.chomp

# sにハイフンがどれだけ入っているか確認
result = s.gsub(/-+/, '-')

# 出力
puts result
