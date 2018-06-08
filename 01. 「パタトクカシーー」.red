; 01. 「パタトクカシーー」
; 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

patatokakushi: "パタトクカシーー"
rejoin collect [repeat i length? patatokakushi [if (i % 2) = 0 [keep patatokakushi/:i]]]