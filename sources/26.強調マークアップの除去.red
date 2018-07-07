Red [
	タイトル:	"26.強調マークアップの除去"
	Title:		"26.Remove italic and bold markup"
	Author:		"Koba-yu"
	File:		%26.強調マークアップの除去.red
	Tabs:		4
	問題:		"25の処理時に，テンプレートの値からMediaWikiの強調マークアップ（弱い強調，強調，強い強調のすべて）を除去してテキストに変換せよ．"
	Question:	{Remove markup of "italic", "bold" and "both" from text, in addition to the same process of #25}
]

article: read %jawiki-britain.txt

remove-markup: function [value][
	mark: ["'" some "'"]
	rejoin parse value [collect [any [
				copy start-tag mark keep to start-tag opt start-tag
				| keep skip
			]
		]
	]
]

equal: [" = "]
basic-info: make map! parse article [collect [any [
			"{{基礎情報 国"
			| "|" keep to equal opt equal copy value to ["\n|" | "\n}}"] keep (remove-markup value)
			| "{{" thru "}}"
			| skip
		]
	]
]

; 内容が長いため、ファイル出力とする
; Write the content to a file because it is too long to print.
write %basic-info26.txt basic-info