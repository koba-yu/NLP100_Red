; 01. 「パタトクカシーー」
; 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

; 回答例１
print extract "パタトクカシーー" 2

; 回答例２
patatokukashi: "パタトクカシーー"
print rejoin collect [repeat i length? patatokukashi [if (i % 2) <> 0 [keep patatokukashi/:i]]]