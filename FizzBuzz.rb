
# 関数定義
  def FizzBuzz(num)
    result  = []
      if num % 15 == 0
        print "FizzBuzz"
      elsif num % 3 == 0
        print "Fizz"
      elsif num % 5 == 0
        print "Buzz"
      else
        print num
      end
    print ", "
  end


# 定義した関数を繰り返す
for num in 1..31 do
   FizzBuzz(num)
end
