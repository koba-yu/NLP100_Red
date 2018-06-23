Red [
	タイトル:	"16.ファイルをN分割する"
	Title:		"16.Devide a file into N rows"
	Author:		"Koba-yu"
	File:		%16.ファイルをN分割する.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Take a natural number N by some ways like command line arguments, then devide the input file into files N rows each.
	}
]

; ---------------------------------
; 回答１(Answer 1)
; ---------------------------------
count: to integer! ask "Enter count:"
rows: read/lines %hightemp.txt

i: 0
while [not empty? rows][
	unit: take/part rows count
	write/lines rejoin [%splited i: i + 1 ".txt"] unit
]

; ---------------------------------
; 回答２(Answer 2)
; ---------------------------------
count: to integer! ask "Enter count:"
rows: read/lines %hightemp.txt

units: collect [while [not empty? rows][keep/only collect [loop count [if row: take rows [keep row]]]]]
repeat i length? units [write/lines rejoin [%splited i ".txt"] units/:i]
