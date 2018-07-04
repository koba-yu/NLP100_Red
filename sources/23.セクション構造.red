Red [
	タイトル:	"23.セクション構造"
	Title:		"23.Section structure"
	Author:		"Koba-yu"
	File:		%23.セクション構造.red
	Tabs:		4
	問題:		{記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．}
	Question:	{Show section names and level (e.g. "== section name ==" should be 1).}}
]

article: read %jawiki-britain.txt

marker: ["=" some "="]
sections: parse article [collect [any [
			copy open marker keep to open opt open keep ((length? open) - 1)
			| skip
		]
	]
]

foreach [name level] sections [
	loop level [prin tab]
	print rejoin [name " (" level ")"]
]