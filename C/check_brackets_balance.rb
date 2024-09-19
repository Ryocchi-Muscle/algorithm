def check_brackets_balance(string)
  # 括弧の対応をハッシュで定義
  brackets = { ')' => '(', '}' => '{', ']' => '[' }
  stack = []

  string.each_char do |char|
    if brackets.values.include?(char)
      # 開き括弧の場合、スタックに積む
      stack.push(char)
    elsif brackets.keys.include?(char)
      # 閉じ括弧の場合、スタックから対応する開き括弧を取り出し比較
      if stack.empty? || stack.pop != brackets[char]
        return false
      end
    end
  end

  # スタックが空なら全ての括弧が対応している
  stack.empty?
end


