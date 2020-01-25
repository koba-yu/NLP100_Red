Red [
	タイトル:	"23.セクション構造"
	Title:		"23.Section structure"
	Author:		"Koba-yu"
	File:		%23.セクション構造.red
	Tabs:		4
	問題:		{記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．}
	Question:	{Show section names and level (e.g. "== section name ==" should be 1).}
]

article: read %jawiki-britain.txt

; ==は元々定義されている演算子のため注意
; Pay attention that == is Red's predefined word.
==: ["=" some "="]
sections: parse article [collect [any [
			copy start-tag == keep to start-tag opt start-tag	; Get section name
			keep ((length? start-tag) - 1)						; Get section level
			| skip
		]
	]
]

foreach [name level] sections [
	loop level [prin tab]
	print rejoin [name " (" level ")"]
]