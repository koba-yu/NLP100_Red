; "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．

; 回答例１
sentence: "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
dlms: charset " ,."
print collect [foreach word split sentence dlms [keep length? word]]

; 回答例２
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