Red [
	タイトル:	"28.MediaWikiマークアップの除去"
	Title:		"28.Remove wiki markup"
	Author:		"Koba-yu"
	File:		%28.MediaWikiマークアップの除去.red
	Tabs:		4
	問題:		"27の処理に加えて，テンプレートの値からMediaWikiマークアップを可能な限り除去し，国の基本情報を整形せよ．"
	Question:	{Format country's infobox by removing as many wiki markups as possible in addition to the same process of #27}
]

article: read %jawiki-britain.txt

remove-markup: function [value][
	mark: ["'" some "'"]
	rejoin parse value [collect [any [
				copy start-tag mark keep to opt start-tag
				| ["[[" | "#REDIRECT [["] [some [thru "|"] keep to "]]" | keep to "]]"] "]]"
				| "{{" thru "|" thru "|" keep to "}}" "}}"
				| "[" thru " " keep to "]" "]"
				| ["<br/>" | "<ref>" | "</ref>" | "<ref name=" thru ">" | "<references />"]
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
write %basic-info28.txt basic-info