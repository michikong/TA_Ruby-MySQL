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
    <% name = '太郎' %>
    <% time_japan = Time.now.getlocal("+09:00") %>
    <p>今は<%= time_japan.hour %>時です。</p>
    <% if 6 <= time_japan.hour && time_japan.hour < 12 %>
      <p>おはよう、<%= name %>さん</p>
    <% elsif 12 <= time_japan.hour && time_japan.hour < 18 %>
      <p>こんにちは、<%= name %>さん</p>
    <% else %>
      <p>こんばんは、<%= name %>さん</p>
    <% end %>
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