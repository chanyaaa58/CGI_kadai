# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new

if cgi.has_key?('goya')
  # データを受け取った後、HTMLの形式でレスポンスを返す
  cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>ゴーヤの大きさと売った相手の情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
elsif cgi.has_key?('goya1')
  cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya1']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>譲渡先が自家消費でないもののゴーヤの情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
elsif cgi.has_key?('goya2')
  cgi.out("type" => "text/html", "charset" => "UTF-8") {
    # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get = cgi['goya2']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>品質が悪いもののゴーヤの情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
end