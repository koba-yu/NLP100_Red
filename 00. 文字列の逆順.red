; 00. 文字列の逆順
; 文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．

; 回答例１
reverse "stressed"

; 回答例２
stressed: "stressed"
rejoin collect [until [keep take/last stressed empty? stressed]]