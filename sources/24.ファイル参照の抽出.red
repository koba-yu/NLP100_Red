Red [
	タイトル:	"24.ファイル参照の抽出"
	Title:		"24.Extract file reference"
	Author:		"Koba-yu"
	File:		%24.ファイル参照の抽出.red
	Tabs:		4
	問題:		"記事から参照されているメディアファイルをすべて抜き出せ．"
	Question:	"Extract all referenced media files in the article."
]

article: read %jawiki-britain.txt

files: parse article [collect [any [
			["File:" | "ファイル:"] keep to "|"
			| skip
		]
	]
]

foreach file files [print file]