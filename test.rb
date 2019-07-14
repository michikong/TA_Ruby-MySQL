def web_page
  <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>タイトル</title>
  </head>
  <body>
    <p>本文です。</p>
  </body>
</html>
  PAGE
end

puts web_page