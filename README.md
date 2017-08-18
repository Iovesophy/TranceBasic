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



