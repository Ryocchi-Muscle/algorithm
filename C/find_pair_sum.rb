def find_pair_with_target_sum(array, target)
  # 数値を格納するハッシュを用意
  hash = {}

  # 配列の各要素をループ
  array.each do |num|
    # ターゲットとの差を計算
    complement = target - num

    # 差がハッシュに存在するか確認
    if hash[complement]
      return [complement, num]
    end

    # ハッシュに現在の数を格納
    hash[num] = true
  end

  # 解が見つからない場合
  nil
end

# テストケース
array = [2, 6, 8, 3, 5, 9]
target = 10

result = find_pair_with_target_sum(array, target)
if result
  puts "Pair found: #{result}"
else
  puts "No pair found"
end
