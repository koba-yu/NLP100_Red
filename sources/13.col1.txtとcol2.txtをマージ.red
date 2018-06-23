Red [
	タイトル:	"13.col1.txtとcol2.txtをマージ"
	Title:		"13.Merge col1.txt and col2.txt"
	Author:		"Koba-yu"
	File:		%13.col1.txtとcol2.txtをマージ.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		12で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		By merging col1.txt and col2.txt that you made #12, make a tab-delimited file that has hightemp.txt's 1st column and 2nd column.
	}
]

col1: read/lines %col1.txt
col2: read/lines %col2.txt

lines: collect [until [
		keep rejoin [take col1 tab take col2]
		(empty? col1) and empty? col2
	]
]

write/lines %merged.txt lines