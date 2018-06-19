Red [
	Title:		"19.各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる"
	Author:		"Koba-yu"
	File:		%19.各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる.red
	Tabs:		4
	Question:	{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．
	}
]

map: make map! []
rows: collect [foreach row read/lines %hightemp.txt [
		prefecture: first split row tab
		map/:prefecture: either map/:prefecture [map/:prefecture + 1][keep prefecture 1]
	]
]

sort/compare rows function[x y][either map/:x = map/:y [x < y][map/:x > map/:y]]
foreach row rows [print rejoin [row "(" map/:row ")"]]