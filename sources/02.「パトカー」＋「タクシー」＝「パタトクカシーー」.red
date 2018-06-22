Red [
	Title:		"02.「パトカー」＋「タクシー」＝「パタトクカシーー」"
	Author:		"Koba-yu"
	File:		%02.「パトカー」＋「タクシー」＝「パタトクカシーー」.red
	Tabs:		4
	問題:		"「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．"
	Question:	"By taking a character in order between 'パトカー' and 'タクシー', get the string 'パタトクカシーー' "
]

patrol-car: "パトカー"
taxi: "タクシー"
print rejoin collect [until [
		keep take patrol-car
		keep take taxi
		(empty? patrol-car) and empty? taxi
	]
]