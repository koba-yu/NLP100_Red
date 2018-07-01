Red [
	タイトル:	"20.JSONデータの読み込み"
	Title:		"20.Read JSON"
	Author:		"Koba-yu"
	File:		%20.JSONデータの読み込み.red
	Tabs:		4
	問題:		{
		Wikipediaの記事を以下のフォーマットで書き出したファイルjawiki-country.json.gzがある．

			* 1行に1記事の情報がJSON形式で格納される
			* 各行には記事名が"title"キーに，記事本文が"text"キーの辞書オブジェクトに格納され，
			  そのオブジェクトがJSON形式で書き出される
			* ファイル全体はgzipで圧縮される
		
		以下の処理を行うプログラムを作成せよ．

		Wikipedia記事のJSONファイルを読み込み，「イギリス」に関する記事本文を表示せよ．
		問題21-29では，ここで抽出した記事本文に対して実行せよ．
	}
	Question:	{
		There is a file jawiki-country.json.gz that includes Wikipedia's data as format below;

			* Each line includes one article data, with format of JSON
			* Each line has "title" key of the article title and "text" key of the article text as JSON
			* A whole file is compressed by gzip

		Make a program that performs the following process;	

		Read a JSON file of the Wikipedia data and show the article text about "イギリス(Britain)".
	}
]

; Redには今のところgzipの解凍をする関数はないので、gzipをコマンドラインで呼び出して使用します。
; Windowsの場合、事前にgzipをダウンロードし、パスを通すかカレントディレクトリに配置してください。
;
; I use 'call' with gzip because Red does not have implementation of gzip function, so far.
; If you use Windows, download gzip, set gzip directory to PATH environment variable or
; put gzip on current directory.

; 元ファイルがなくなると面倒なので、解凍してからもう一度作成
gz-file: read/binary %jawiki-country.json.gz
call/wait "gzip -d -f jawiki-country.json.gz"
write/binary %jawiki-country.json.gz gz-file

found?: foreach line read/lines %jawiki-country.json [
	if parse line [
		"{" {"text": } copy text to {, "title": "イギリス"^}} skip to end
	][break/return true]
]

unless found? [throw "Not found"]

print text