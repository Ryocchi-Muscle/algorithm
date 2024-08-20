# Yes or No

# 1 行目には、あなたの食べたい料理名を表す文字列 S
S = gets.chomp



# 与えられるメニューの単語数を表す整数 N
N = gets.to_i

# メニュー名を表す単語の文字列 T_i (1 ≦ i ≦ N) が半角スペース区切りで与えられます。
# メニュー名を表す単語の文字列 T_i は、配列
T_i = gets.split
# 確認用出力
p T_i

# match_found 変数
match_found = false

T_i.each do |menu_item|
  if S == menu_item
    match_found = true
    break
  end
end

if match_found
  puts "Yes"
else
  puts "No"
end
