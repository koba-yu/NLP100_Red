Red [
	タイトル:	"11.タブをスペースに置換"
	Title:		"11.Replace tabs with spaces"
	Author:		"Koba-yu"
	File:		%11.タブをスペースに置換.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		タブ1文字につきスペース1文字に置換せよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Replace a tab with a space.
	}
]

print replace read %hightemp.txt tab " "