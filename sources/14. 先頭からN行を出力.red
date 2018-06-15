; hightemp.txtは，日本の最高気温の記録を「都道府県」「地点」「℃」「日」のタブ区切り形式で格納したファイルである．
; 以下の処理を行うプログラムを作成し，hightemp.txtを入力ファイルとして実行せよ．

; 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち先頭のN行だけを表示せよ．

count: to integer! ask "Enter count:"
rows: copy/part read/lines %hightemp.txt count
print collect [while [keep take rows not empty? rows][keep newline]]