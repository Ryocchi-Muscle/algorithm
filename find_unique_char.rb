# 下記の関数を書いてください。

# > 3文字の文字列がs引数として与えられます。
# > sの中で 1 度だけ含まれる文字1つを返り値にする関数を書いてください。
# > 但し、そのような文字が存在しない場合は代わりに -1（数値） を返り値にしてください。


# - 例1："aab" -> "b"
# - 例2："abc" -> "a" または "b" または "c"(※ どれでもいいので)
# - 例3："ppp" -> -1 (1度だけ含まれる文字がないので)

# 得意な言語で書いて、pull requestを作成してください。

# 引数
#  s = "aab"
#  p s
#  p s[0], s[1], s[2]

# 1文字ずつsplitで分ける
# 1文字ずつ判別する
# 3つの条件を書く


# 任意に入力された引数


def BK(s)
  if s[0] == s[1] && s[1] == s[2]
    return -1
  elsif s[0] != s[1] && s[1] != s[2] && s[0] != s[2]
    return s[0]
  elsif s[0] == s[1]
    return s[2]
  elsif s[0] == s[2]
    return s[1]
  else
    return s[0]
  end
end


puts BK("aab")
puts BK("abc")
puts BK("ppp")
