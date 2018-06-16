Red [
	Title:		"11.タブをスペースに置換"
	Author:		"Koba-yu"
	File:		%11.タブをスペースに置換.red
	Tabs:		4
	Question:	{
		hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
		以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

		タブ1文字につきスペース1文字に置換せよ．
	}
]

print replace read %hightemp.txt tab " "