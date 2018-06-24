Red [
	タイトル:	"18.各行を3コラム目の数値の降順にソート"
	Title:		"18.Sort rows in descending order by 3rd column's numeric value"
	Author:		"Koba-yu"
	File:		%18.各行を3コラム目の数値の降順にソート.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature
		by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Sort rows in descending order by 3rd column's numeric value(Don't change each row's content).
	}
]

; ---------------------------------------
; 回答例１(Answer 1)
; ---------------------------------------
rows: collect [foreach row read/lines %hightemp.txt [keep/only split row tab]]
sort/compare rows function [x y][(to float! x/3) > to float! y/3]
foreach row rows [print row]

; ---------------------------------------
; 回答例２(Answer 2)
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
; 回答例３(Answer 3)
; ---------------------------------------
rows: collect [foreach row read/lines %hightemp.txt [
		row: split row tab
		keep object [
			prefecture: row/1
			point: row/2
			temperature: to float! row/3
			date: row/4
		]
	]
]
sort/compare rows function [x y][x/temperature > y/temperature]

foreach row rows [print [row/prefecture row/point row/temperature row/date]]