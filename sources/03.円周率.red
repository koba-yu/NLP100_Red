Red [
	タイトル:	"03.円周率"
	Title:		"03.Pi"
	Author:		"Koba-yu"
	File:		%03.円周率.red
	Tabs:		4
	問題:		{
		"Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
		という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．
	}
	Question:	{
		Split the sentence below into words, and get the list of the numbers of characters.
		"Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
	}
]

; -----------------------------
; 回答例１
; -----------------------------
sentence: "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
dlms: charset " ,."
print collect [foreach word split sentence dlms [keep length? word]]

; -----------------------------
; 回答例２
; -----------------------------
sentence: "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

dlms: charset " ,."
letter: charset [not " ,."]
words: parse sentence [collect [any [
			keep some letter
			| dlms
		]
	]
]

print collect [foreach x words [keep length? to string! x]]