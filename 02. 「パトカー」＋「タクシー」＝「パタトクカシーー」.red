; 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
; 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．
patrol-car: "パトカー"
taxi: "タクシー"
rejoin collect [while [(zero? length? p: take patrol-car) and (zero? length? t: take taxi)] [keep p keep t]]