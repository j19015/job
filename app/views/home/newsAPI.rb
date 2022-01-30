# Your code here!

#各種ライブラリを読み込む
require 'net/http'
require 'json'
require 'uri'

#uriライブラリ>URIモジュール
#該当するインスタンスを生成して返す
uri = URI.parse("https://newsapi.org/v2/top-headlines?country=jp&apiKey=1509b00be4d041338443338758efa905")
# => #<URI::HTTP http://hoge.com>

#net/httpライブラリ>Net::HTTPクラス
#URL先にGETリクエストを送り、そのボディを"文字列"として返す。
json = Net::HTTP.get(uri)

#josonライブラリ>JSONモジュール
#取得したJSON形式の文字列を、Rubyオブジェクトに変換して返す
news = JSON.parse(json)

#p news["articles"][0]["title"]

#p news["articles"][0]["description"]