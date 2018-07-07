Red [
	タイトル:	"25.テンプレートの抽出"
	Title:		"25.Extract template: infobox country"
	Author:		"Koba-yu"
	File:		%25.テンプレートの抽出.red
	Tabs:		4
	問題:		"記事中に含まれる「基礎情報」テンプレートのフィールド名と値を抽出し，辞書オブジェクトとして格納せよ．"
	Question:	{Extract field names and values of "基礎情報(infobox)" template and put them into a map object.}
]

article: read %jawiki-britain.txt

equal: [" = "]
basic-info: make map! parse article [collect [any [
			"{{基礎情報 国"
			| "|" keep to equal opt equal keep to ["\n|" | "\n}}"]
			| "{{" thru "}}"
			| skip
		]
	]
]

; 内容が長いため、ファイル出力とする
; Write the content to a file because it is too long to print.
write %basic-info25.txt basic-info