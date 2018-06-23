Red [
	タイトル:	"01.「パタトクカシーー」"
	Title:		"01.Extract string"
	Author:		"Koba-yu"
	File:		%01.「パタトクカシーー」.red
	Tabs:		4
	問題:		"「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．"
	Question:	"Get the string by picking 1st, 3rd, 5th, 7th character from 'パタトクカシーー'"
]

; --------------------------------
; 回答例１(Answer 1)
; --------------------------------
print extract "パタトクカシーー" 2

; --------------------------------
; 回答例２(Answer 2)
; --------------------------------
print rejoin collect [foreach [x y] "パタトクカシーー" [keep x]]

; --------------------------------
; 回答例３(Answer 3)
; --------------------------------
patatokukashi: "パタトクカシーー"
print rejoin collect [repeat i length? patatokukashi [if odd? i [keep patatokukashi/:i]]]