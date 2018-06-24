Red [
	タイトル:	"00.文字列の逆順"
	Title:		"00.Reversed string"
	Author:		"Koba-yu"
	File:		%00.文字列の逆順.red
	Tabs:		4
	問題:		{文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．}
	Question:	{Get the string "stressed" reveresd.}
]

; ---------------------------------------
; 回答例１(Answer 1)
; ---------------------------------------
print reverse "stressed"

; ---------------------------------------
; 回答例２(Answer 2)
; ---------------------------------------
stressed: "stressed"

string: copy []
while [not empty? stressed][append string take/last stressed]
print rejoin string

; ---------------------------------------
; 回答例３(Answer 3)
; ---------------------------------------
stressed: "stressed"
print rejoin collect [until [keep take/last stressed empty? stressed]]