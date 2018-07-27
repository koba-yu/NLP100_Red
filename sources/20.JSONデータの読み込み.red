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

		Read a JSON file of the Wikipedia data and show the article text about "イギリス"(Britain).
	}
]

text: to string! decompress read/binary %jawiki-country.json.gz

; 結構時間がかかるので注意
found?: foreach line split text lf [
	if parse line [
		"{" {"text": } copy text to {, "title": "イギリス"^}} skip to end
	][break/return true]
]

unless found? [throw "Not found"]

; 内容が長いため、コンソール表示ではなくテキスト出力とする。
; 以降の問題ではこのファイルから内容を読込するものとする。
; Write to a file rather than console print, because the data is too long.
; On the following questions, I read this file as input.
write %jawiki-britain.txt text