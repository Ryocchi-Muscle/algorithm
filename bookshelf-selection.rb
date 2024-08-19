
# まず与えられた引数を分ける
# splitで分ける
# num = "A B C"
# array = num.split
# p array



# 本の冊数取得
A,B,C = gets.split.map(&:to_i)
# 本棚の数取得
N = gets.to_i
# 本棚の情報をリストに格納
# 本棚の情報の配列作る
bookshelves = []
#  本棚の数分の情報取得する
N.times do
  p, x, y, z = gets.split.map(&:to_i)
  bookshelves << { price: p, a5: x, comic: y, paperback: z }
end

# bookshelvesのデバック
# puts bookshelves

# 本棚のフィルタリング
valid_bookshelves = bookshelves.select do |shelf|
  total_space = [shelf[:a5], shelf[:a5] + shelf[:comic], shelf[:a5] + shelf[:comic] + shelf[:paperback]]
   # A5が入るか
   next unless shelf[:a5] >= A
   # コミックサイズが入るか
   next unless shelf[:a5] + shelf[:comic] >= A + B
  # 文庫サイズの本が入るか
   next unless
   shelf[:a5] + shelf[:comic] + shelf[:paperback] >= A + B + C
   true
end

# valid_bookshelvesのデバック
# puts valid_bookshelves

# 最も安い本棚を選択
chepest_price = valid_bookshelves.map { |shelf| shelf[:price] }.min

# 結果の出力
# chepest_priceが存在すればchepest_price を存在しなければ-1を出力する
puts chepest_price || -1
