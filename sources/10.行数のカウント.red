Red [
	タイトル:	"10.行数のカウント"
	Title:		"10.Count rows"
	Author:		"Koba-yu"
	File:		%10.行数のカウント.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		行数をカウントせよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Count rows of the file.
	}
]

print length? read/lines %hightemp.txt