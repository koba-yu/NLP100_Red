Red [
	タイトル:	"22.カテゴリ名の抽出"
	Title:		"22.Extract category names"
	Author:		"Koba-yu"
	File:		%22.カテゴリ名の抽出.red
	Tabs:		4
	問題:		"記事のカテゴリ名を（行単位ではなく名前で）抽出せよ．"
	Question:	"Extract category names(not a whole line but just name)."
]

article: read %jawiki-britain.txt
categories: parse article [collect [any ["[[Category:" keep to ["|" to "]]" | "]]"] | skip]]]

foreach c categories [print c]