Red [
	タイトル:	"17.１列目の文字列の異なり"
	Title:		"17.Different string set in 1st column"
	Author:		"Koba-yu"
	File:		%17.１列目の文字列の異なり.red
	Tabs:		4
	問題:		{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		1列目の文字列の種類（異なる文字列の集合）を求めよ．
	}
	Question:	{
		hightemp.txt is a tab-delimited file that records Japan's highest temperature by terms of "prefecture", "area", "degree Celsius" and "date".
		Make a program that uses hightemp.txt as input and performs the following process;

		Get a set from values of 1st columns.
	}
]

prefectures: unique collect [foreach row read/lines %hightemp.txt [keep take split row tab]]
foreach prefecture prefectures [print prefecture]