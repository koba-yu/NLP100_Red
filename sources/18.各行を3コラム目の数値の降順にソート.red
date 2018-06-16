Red [
	Title:		"18.各行を3コラム目の数値の降順にソート"
	Author:		"Koba-yu"
	File:		%18.各行を3コラム目の数値の降順にソート.red
	Tabs:		4
	Question:	{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．
	}
]

; ---------------------------------------
; 回答例１
; ---------------------------------------
rows: read/lines %hightemp.txt
sort/skip/compare rows 4 function [x y][(to float! x/3) > to float! y/3]
foreach row rows [print row]

; ---------------------------------------
; 回答例２
; ---------------------------------------
rows: collect [foreach row read/lines %hightemp.txt [
		row: split row tab
		keep reduce [row/1 row/2 to float! row/3 row/4]
	]
]
sort/reverse/skip/compare rows 4 3

properties: [prefecture point temperature date]
do compose/only [foreach (properties) rows [print properties]]

; ---------------------------------------
; 回答例３
; ---------------------------------------
rows: collect [foreach row read/lines %hightemp.txt [
		row: split row tab
		keep context [
			prefecture: row/1
			point: row/2
			temperature: to float! row/3
			date: row/4
		]
	]
]
sort/compare rows function [x y][x/temperature > y/temperature]

foreach row rows [print [row/prefecture row/point row/temperature row/date]]