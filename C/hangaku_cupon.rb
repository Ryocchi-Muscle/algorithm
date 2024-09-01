# あなたはスーパーで N 個の商品を購入しました。それぞれの商品の価格は u_i 円です。
# あなたは 1 枚の半額クーポンを持っています。
# 半額クーポンは L 円以上の商品があれば、その中でもっとも高額な 1 つの商品に自動的に適用されます。
# お会計の合計金額を出力してください。

# 商品個数入力 n, クーポンの適用可能価格の下限 l
n, l = gets.split.map(&:to_i)

# 商品個数分の商品の価格の値段の入力受け取り値
price = []

# 商品価格の入力受け取り値
price = gets.split.map(&:to_i)

# クーポン適用可能な商品を格納しておく配列
applivcaticable_price = []

# クーポン適用可能な商品どうかの確認と
# その中でクーポンを適用できる商品の中で最も高額な商品を見つける
max_price = price.select { |p| p >= l }.max

# 全商品の合計金額を計算
total = price.sum

# 最も高額な商品を半額にして、合計金額に加算する
if max_price
  total -= max_price
  total += max_price / 2
end

# 出力
puts total
