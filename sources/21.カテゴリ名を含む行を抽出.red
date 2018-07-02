Red [
	タイトル:	"21.カテゴリ名を含む行を抽出"
	Title:		"21.Extract rows of category definition"
	Author:		"Koba-yu"
	File:		%21.カテゴリ名を含む行を抽出.red
	Tabs:		4
	問題:		"記事中でカテゴリ名を宣言している行を抽出せよ．"
	Question:	"Extract rows of category definition in the article."
]

article: read %jawiki-britain.txt
category: ["[[Category:" thru "]]"]
categories: parse article [collect [any [keep category | skip]]]

foreach c categories [print c]