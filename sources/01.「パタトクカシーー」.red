Red [
	Title:		"01.「パタトクカシーー」"
	Author:		"Koba-yu"
	File:		%01.「パタトクカシーー」.red
	Tabs:		4
	Question:	"「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．"
]

; --------------------------------
; 回答例１
; --------------------------------
print extract "パタトクカシーー" 2

; --------------------------------
; 回答例２
; --------------------------------
print rejoin collect [foreach [x y] "パタトクカシーー" [keep x]]

; --------------------------------
; 回答例３
; --------------------------------
patatokukashi: "パタトクカシーー"
print rejoin collect [repeat i length? patatokukashi [if odd? i [keep patatokukashi/:i]]]