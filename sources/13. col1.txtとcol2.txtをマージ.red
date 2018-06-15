; 12で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．

col1: read/lines %col1.txt
col2: read/lines %col2.txt

lines: collect [until [
		keep rejoin [take col1 tab take col2]
		(empty? col1) and empty? col2
	]
]

write/lines %merged.txt lines