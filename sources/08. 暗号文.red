; 与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．
;
;    英小文字ならば(219 - 文字コード)の文字に置換
;    その他の文字はそのまま出力
;
; この関数を用い，英語のメッセージを暗号化・復号化せよ．

cipher: func [
	"文字列を暗号化します"
	text	[string!]	"暗号化する文字列"
	return: [string!]	"暗号化された文字列"
	/local lower
][
	lower: charset [#"a" - #"z"]
	rejoin collect [foreach char text [
			keep either find lower char [to char! (219 - to integer! char)][char]
		]
	]
]

; 動作確認
text: ask "Enter text:"
print ["暗号化：" encrypted: cipher text]
print ["復号化：" decrypted: cipher encrypted]
print rejoin ["復号化" either text = decrypted ["OK"]["NG"]]