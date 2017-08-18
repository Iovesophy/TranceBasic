# TranceBasic
TranceBasic is metaprocessor.

# 概要  
これはLinuxのコマンドラインで使えるプログラミング学習用アプリケーションです。  
minibasicの演算子を自分で定義でき、多くの国の言語でプログラミング学習を行うことができます。  
また、Metaprocessorという三次言語への変換機能を持っているので、
自分の演算子名を自由に決めても他人がそのソースを読むことが可能となています。
加えて、Metaprocessorで変換出力される中間コードは絵文字であるためより直感的にアルゴリズムの概念を読み取ることができ、
人間にとってよりシンプルにコードが出力されます。  

# 使用方法

```
$ git clone https://github.com/Iovesophy/TranceBasic.git  

```
でクローンしてください
また、basicが必要なので
私が制作したminibasicをこのTranceBasicのフォルダー上にクローンしてください。  

```
$ cd TranceBasic
$ git clone https://github.com/Iovesophy/basic.git　　

```
クローンが完了しましたら、
クローンが完了したフォルダーそれぞれにmakeを実行してください

```
$ cd TranceBasic/basic
$ make
$ cd ..
$ make

```
makeの最中に自分の付けたい演算子名を定義できますので定義してください。

定義が完了されましたらコンパイルは完了です。

# 実行方法

実行には次のようにTranceBasicのフォルダー上でプロンプトにコマンドを入れてください。

```
$ ./led sample.tc
```

sample.tc には自分のファイル名を。

実行できましたらTranceBasicに開発したラインエディタが起動します。

ラインエディタにはいくつかのコマンドがあります。

## コマンド一覧
```
a >>> ファイルを開いたまま上書き保存
w >>> ファイルを閉じて上書き保存
i >>> ファイルの最終行から入力
l >>> ファイルの内容表示
e >>> ファイルの内容編集
s >>> 行番号の上の行へ挿入
m >>> Metaprocessor 起動（実行前にaコマンドなどでファイルを一旦保存してください。）
o >>> basic用のrunfile生成とプログラムの実行
r >>> プログラムの実行（oコマンド実行前のプログラム実行。）
q >>> 終了（Metaprocessorから戻るときにも使用できる）
```

# Basicの演算子
このBasicはとても少ない機能しかありません
今後もっと機能を増やすつもりです。

演算子一覧
```
＊算術
+ >> 加算
- >> 減算
* >> 乗算
/ >> 割り算
% >> あまり

＊論理演算
== >> 等しい
!= >> 等しくない
<  >> より大きい
>  >> より小さい
=> >> 以下
=< >> 以上

＊代入演算子
= >> 変数に代入

＊変数
A-Z のアルファベット大文字一文字

＊IF 演算子
IF ステートメント演算子によって、他の値の真実性に対して値条件を指示できます。IF 演算子の構文は次のとおりです。
variable = IF expression THEN expression ELSE　IF expression　ELSE　expression ENDIF  
variable には、IF 式が真の場合、THEN 式の値が割り当てられ、そうでない場合は、ELSEIF ELSE 式の値が割り当てられます。IF 演算子は IF ステートメントに似ていますが、より効率的な場合もあります。

＊入力
入力演算子でユーザからの入力が行えます
書式は
INPUT A
INPUT "hello";A
をサポートしています。

＊繰り返し
指定回数繰り返しを行えます。
FOR 変数 = 1 TO 10
 処理
NEXT

```


kazuya yuda




