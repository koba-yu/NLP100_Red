; 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．

data: collect [foreach row read/lines %hightemp.txt [
		columns: split row tab
		keep columns/1 keep columns/2
	]
]
write/lines %col1.txt extract data 2
write/lines %col2.txt extract/index data 2 2