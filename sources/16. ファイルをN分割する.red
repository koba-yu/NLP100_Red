; hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
; 以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

; 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．

; 回答１
count: to integer! ask "Enter count:"
rows: read/lines %hightemp.txt

i: 0
while [not empty? rows][
	unit: take/part rows count
	write/lines rejoin [%splited i: i + 1 ".txt"] unit
]

; 回答２
count: to integer! ask "Enter count:"
rows: read/lines %hightemp.txt

units: collect [while [not empty? rows][keep/only collect [loop count [if row: take rows [keep row]]]]]
repeat i length? units [write/lines rejoin [%splited i ".txt"] units/:i]
