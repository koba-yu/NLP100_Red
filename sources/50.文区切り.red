Red [
	タイトル:	"50.文区切り"
	Title:		"50.Spliting sentences"
	Author:		"Koba-yu"
	File:		%50.文区切り.red
	Tabs:		4
	問題:		{
		英語のテキスト（nlp.txt）に対して，以下の処理を実行せよ.
		(. or ; or : or ? or !) → 空白文字 → 英大文字というパターンを文の区切りと見なし，
		入力された文書を1行1文の形式で出力せよ．
	}
	Question:	{
		Execute a process below to a English text file "nlp.txt";
		Suppose a sentence pattern as follows;
		(. or ; or : or ? or !) -> space -> a uppercase character
		Then output an input text with format of each sentence as a line.
	}
]

white-space: charset reduce [space tab cr lf]
upper: charset [#"A" - #"Z"]
lines: parse read %nlp.txt [collect [any [
			keep thru ["." | ";" | ":" | "?" | "!"] to [some white-space upper]
		]
	]
]

; 内容が長いため、ファイル出力とする
; Write the content to a file because it is too long to print.
write/lines %answer50.txt lines