Red [
	タイトル:	"12.1列目をcol1.txtに，2列目をcol2.txtに保存"
	Title:		"12.Put 1st column data to col1.txt, 2nd column data to col2.txt"
	Author:		"Koba-yu"
	File:		%12.1列目をcol1.txtに，2列目をcol2.txtに保存.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Extract 1st columns data and write as col1.txt and 2nd columns data as col2.txt.
	}
]

data: collect [foreach row read/lines %hightemp.txt [
		columns: split row tab
		keep columns/1 keep columns/2
	]
]
write/lines %col1.txt extract data 2
write/lines %col2.txt extract/index data 2 2