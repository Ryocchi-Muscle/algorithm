# 過去に行われたじゃんけんの回数を表す整数 N
# グー:G
# チョキ：C
# パー：P

# G > C
# C > P
# P > G


input_line = gets.to_i
# 勝った回数をカウントする変数
win_count = 0

input_line.times do
  alice,  bob = gets.chomp.split(" ")
  if (alice == 'G' && bob == 'C') ||
     (alice == 'C' && bob == 'P') ||
     (alice == 'P' && bob == 'G')
    win_count += 1
  end
end

puts win_count
