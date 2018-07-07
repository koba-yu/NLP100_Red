Red [
	タイトル:	"27.内部リンクの除去"
	Title:		"27."
	Author:		"Koba-yu"
	File:		%27.内部リンクの除去.red
	Tabs:		4
	問題:		"26の処理に加えて，テンプレートの値からMediaWikiの内部リンクマークアップを除去し，テキストに変換せよ．"
	Question:	{Remove markup of "link to another page" in addition to the same process of #26}
]

article: read %jawiki-britain.txt

remove-markup: function [value][

	mark: ["'" some "'"]
	file: [["[[ファイル:" | "[[File:"] thru "]]"]
	category: ["[[Category:" thru "]]"]
	redirect: [{#REDIRECT [[} thru "]]"]

	rejoin parse value [collect [any [
				copy start-tag mark keep to opt start-tag
				| keep file
				| keep category
				| keep redirect
				| "[[" [some [thru "|"] keep to "]]" | keep to "]]"] "]]"
				| keep skip
			]
		]
	]
]

equal: [" = "]
basic-info: make map! parse article [collect [any [
			"{{基礎情報 国"
			| "|" keep to equal equal copy value to ["\n|" | "\n}}"] keep (remove-markup value)
			| "{{" thru "}}"
			| skip
		]
	]
]

; 内容が長いため、ファイル出力とする
; Write the content to a file because it is too long to print.
write %basic-info27.txt basic-info