; 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
; この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．

n-gram: func [
	"n-gramの結果を返します"
	target	[block! string!]	"対象の文字列またはブロック"
	n		[integer!]			"n-gramのnの値"
	return: [block!]			"n-gram"
][
	collect [repeat i (length? target) - n + 1 [keep/only copy/part skip target (i - 1) n]]
]

sentence: "I am an NLPer"
words: split sentence " "

n-gram words 2
n-gram sentence 2