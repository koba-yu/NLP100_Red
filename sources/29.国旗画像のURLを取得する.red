Red [
	タイトル:	"29.国旗画像のURLを取得する"
	Title:		"29.Get URL of the counry flag"
	Author:		"Koba-yu"
	File:		%29.国旗画像のURLを取得する.red
	Tabs:		4
	問題:		{
		テンプレートの内容を利用し，国旗画像のURLを取得せよ．
		（ヒント: MediaWiki APIのimageinfoを呼び出して，ファイル参照をURLに変換すればよい）.
	}
	Question:	{
		By using the template you got previous questions, get the country flag URL
		(Hint: you can convert file referenct to URL by using MediaWiki API imageinfo).
	}
]

article: load %basic-info28.txt

url: to url! rejoin [
	"https://www.mediawiki.org/w/api.php?action=query&titles=File:"
	to url! article/("国旗画像")
	"&format=json&prop=imageinfo&iiprop=url"
]
response: read url

unless parse response [thru {"url":"} copy image-info to {"} to end][
	throw "Response can not be parsed."
]

print image-info