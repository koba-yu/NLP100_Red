Red [
	タイトル:	"19.各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる"
	Title:		"19.Evaluate frequency of appearance of 1st column's value, and sort by the frequency"
	Author:		"Koba-yu"
	File:		%19.各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Evaluate frequency of appearance of 1st column's value, and sort by the frequency.
	}
]

map: make map! []
foreach row read/lines %hightemp.txt [
    prefecture: first split row tab
    map/:prefecture: 1 + any [map/:prefecture 0]
]

rows: keys-of map
sort/compare rows function[x y][either map/:x = map/:y [x < y][map/:x > map/:y]]
foreach row rows [print rejoin [row "(" map/:row ")"]]