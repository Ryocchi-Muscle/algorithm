def eratosthenes(n)
  # 素数候補を用意
  prime_number = (2..n).to_a
  # 素数候補の振るい落とし
  prime_number.each do |p|
    break if p * p > n
    # pの倍数を削除
     prime_number.reject! { |num| num > p &&  num % p == 0}
    end
    # 素数リストを『,』で区切って表示
    puts prime_number.join(",")
end

eratosthenes(50)
