# ERB ライブラリを読み込む
require 'erb'

# HTMLを表示するメソッドを定義
def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <ul>
      <% (1..9).each do |num| %>
        <li><%= num %></li>
      <% end %>
    </ul>
  </body>
</html>
  PAGE
end

# ERB オブジェクトのインスタンスを生成
erb = ERB.new(web_page)
# ERB 内の Ruby コードを実行(Time.now)
result = erb.result
# 文字列を表示
puts result