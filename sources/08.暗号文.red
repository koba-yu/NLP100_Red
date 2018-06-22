Red [
	タイトル:	"08.暗号文"
	Title:		"Ciphertext"
	Author:		"Koba-yu"
	File:		%08.暗号文.red
	Tabs:		4
	問題:		{
		与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．

			英小文字ならば(219 - 文字コード)の文字に置換
   			その他の文字はそのまま出力

		この関数を用い，英語のメッセージを暗号化・復号化せよ．
	}
	Question:	{
		Make a function 'cipher' that converts each characters of a given string by the specification below;

			If the character is lower case, replace it by the character of (219 - character code).
			Other characters are not converted.

		Encrypt and decrypt the English sentence by the function.
	}
]

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