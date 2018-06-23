Red [
	タイトル:	"14.先頭からN行を出力"
	Title:		"14.Output first N rows"
	Author:		"Koba-yu"
	File:		%14.先頭からN行を出力.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		自然数Nをコマンドライン引数などの手段で受け取り，入力のうち先頭のN行だけを表示せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Take a natural number N by some ways like command line arguments, then show first N rows.
	}
]

count: to integer! ask "Enter count:"
rows: take/part read/lines %hightemp.txt count
foreach row rows [print row]