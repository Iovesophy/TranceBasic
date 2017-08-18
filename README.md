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
q >>> 終了（もし終了できなければCtrl+Zで終了してください。）
```







