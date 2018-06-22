Red [
	タイトル:	"07.テンプレートによる文生成"
	Title:		"Make a string by "
	Author:		"Koba-yu"
	File:		%07.テンプレートによる文生成.red
	Tabs:		4
	問題:		{
		引数x, y, zを受け取り「x時のyはz」という文字列を返す関数を実装せよ．
		さらに，x=12, y="気温", z=22.4として，実行結果を確認せよ．
	}
	Question:	{
		Make a function that takes arguments x, y, z and return a string "x時のyはz"
		Also check the result when the arguments x=12, y="気温", z=22.4.
	}
]

format: func [x y z][rejoin [x "時の" y "は" z]]

x: 12
y: "気温"
z: 22.4

print format x y z