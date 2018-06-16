Red [
	Title:		"09.Typoglycemia"
	Author:		"Koba-yu"
	File:		%09.Typoglycemia.red
	Tabs:		4
	Question:	{
		スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序を
		ランダムに並び替えるプログラムを作成せよ．ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文（例えば
		"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."）
		を与え，その実行結果を確認せよ．
	}
]

sentence: ask "Enter the sentence:"

dlms: charset " ,."
print collect [foreach word split sentence dlms [
		keep either (length? word) <= 4 [
			word
		][
			rejoin [take word random take/part word (length? word) - 1 word]
		]
	]
]