; hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
; 以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

; 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．

data: collect [foreach row read/lines %hightemp.txt [
		columns: split row tab
		keep columns/1 keep columns/2
	]
]
write/lines %col1.txt extract data 2
write/lines %col2.txt extract/index data 2 2