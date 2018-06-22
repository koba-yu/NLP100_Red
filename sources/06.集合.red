Red [
	タイトル:	"06.集合"
	Title:		"Set"
	Author:		"Koba-yu"
	File:		%06.集合.red
	Tabs:		4
	問題:		{
		"paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，それぞれ, XとYとして求め，
		XとYの和集合，積集合，差集合を求めよ．さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．		
	}
	Question:	{
		Get character bigram from "paraparaparadise" as x and from "paragraph" as y.
		Then get union, intersection and difference set between x and y.
		Also, check 'se' exists in x and y.
	}
]

n-gram: func [
	"n-gramの結果を返します"
	target	[block! string!]	"対象の文字列またはブロック"
	n		[integer!]			"n-gramのnの値"
	return: [block!]			"n-gram"
][
	collect [repeat i (length? target) - n + 1 [keep/only copy/part skip target (i - 1) n]]
]

paraparaparadise: "paraparaparadise"
paragraph: "paragraph"

print ["X:" x: unique n-gram paraparaparadise 2]
print ["Y:" y: unique n-gram paragraph 2]

print ["和集合：" union x y]
print ["積集合：" intersect x y]
print ["差集合：" difference x intersect x y]

print ["seがxに含まれる：" either find x "se" [true][false]]
print ["seがyに含まれる：" either find y "se" [true][false]]