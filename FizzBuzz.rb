# # 関数定義
#   def FizzBuzz(num)
#       if num % 15 == 0
#         print "FizzBuzz"
#       elsif num % 3 == 0
#         print "Fizz"
#       elsif num % 5 == 0
#         print "Buzz"
#       else
#         print num
#       end
#     print ", "
#   end


# # 定義した関数を繰り返す
# for num in 1..31 do
#    FizzBuzz(num)
# end

## 関数定義
def FizzBuzz(num)
  results = [] # 出力を収集する配列を用意する

  for i in 1..num do
    if i % 15 == 0
      results << "FizzBuzz"
    elsif i % 3 == 0
      results << "Fizz"
    elsif i % 5 == 0
      results << "Buzz"
    else
      results << i.to_s
    end
  end

  puts results.join(", ") # 配列をカンマとスペースで連結して出力する
end

# 関数の呼び出し
FizzBuzz(150) # 引数として31を渡す
