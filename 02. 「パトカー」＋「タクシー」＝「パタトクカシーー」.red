; 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
; 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

patrol-car: "パトカー"
taxi: "タクシー"
rejoin collect [until [
		keep take patrol-car
		keep take taxi
		(empty? patrol-car) and empty? taxi
	]
]