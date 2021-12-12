# grepコマンドの基本

**Table of Contents**
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [grepコマンド](#grep%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89)
- [練習問題](#%E7%B7%B4%E7%BF%92%E5%95%8F%E9%A1%8C)
  - [(1) 名前の文字列から田を２文字目以降に含む名前をだけを抽出する](#1-%E5%90%8D%E5%89%8D%E3%81%AE%E6%96%87%E5%AD%97%E5%88%97%E3%81%8B%E3%82%89%E7%94%B0%E3%82%92%EF%BC%92%E6%96%87%E5%AD%97%E7%9B%AE%E4%BB%A5%E9%99%8D%E3%81%AB%E5%90%AB%E3%82%80%E5%90%8D%E5%89%8D%E3%82%92%E3%81%A0%E3%81%91%E3%82%92%E6%8A%BD%E5%87%BA%E3%81%99%E3%82%8B)
  - [(2) ディレクトリから特定の文字列を含むファイル名を表示する](#2-%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%8B%E3%82%89%E7%89%B9%E5%AE%9A%E3%81%AE%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E5%90%AB%E3%82%80%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E5%90%8D%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B)
  - [(3) ディレクトリから特定の文字列を含むファイル名を表示する](#3-%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%8B%E3%82%89%E7%89%B9%E5%AE%9A%E3%81%AE%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E5%90%AB%E3%82%80%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E5%90%8D%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B)
  - [(4) git管理レポジトリーのうち、指定のディレクトリのmodified fileのファイルのみをgit addする](#4-git%E7%AE%A1%E7%90%86%E3%83%AC%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%83%BC%E3%81%AE%E3%81%86%E3%81%A1%E6%8C%87%E5%AE%9A%E3%81%AE%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%AEmodified-file%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E3%81%BF%E3%82%92git-add%E3%81%99%E3%82%8B)
  - [(5) git管理レポジトリーのうち、指定のディレクトリのmodified fileのファイルのみをgit addする](#5-git%E7%AE%A1%E7%90%86%E3%83%AC%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%83%BC%E3%81%AE%E3%81%86%E3%81%A1%E6%8C%87%E5%AE%9A%E3%81%AE%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%AEmodified-file%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E3%81%BF%E3%82%92git-add%E3%81%99%E3%82%8B)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## grepコマンド

`grep` コマンドは指定した文字列を含むファイルおよび、その行を出力するコマンドです.

> Syntax

```zsh
% grep [ options ] PATTERN [ FILE ...] 
```

- `grep` は、 FILE で名前を指定された入力ファイルを読み込み、与えられた PATTERN にマッチする部分を含む行を探します.
- デフォルト動作では、 grep はマッチした行を表示します.

> Option一覧

|分類|短いオプション |長いオプション |意味|
|---|---|---|---|
|マッチングの制御| `-E` | `--extended-regexp`|PATTERN を拡張された正規表現として扱います| 
|| `-i` |`--ignore-case`|PATTERN と入力ファイルの双方で、英大文字と小文字の区別をしないようにします|
|出力の制御|`-o`| `--only-matching` |マッチする行のマッチした部分だけを (それが空文字列でなければ) 表示します<br>マッチした各文字列は、それぞれ別の行に書き出します|
||`-l`| `--files-with-matches`|検索対象の文字列を含むファイル名を返す|
|ファイルやディレクトリの選択| `-r` | `--recursive` |各ディレクトリの下にあるすべてのファイルを再帰的に読み込みます|

## 練習問題

### (1) 名前の文字列から田を２文字目以降に含む名前をだけを抽出する

> 問題
```
#例
#   入力
#       中村 山田 田代 上田 山田丸
#   出力
#       山田 上田 山田丸
```
> 解答

```zsh
% echo 中村 山田 田代 上田 山田丸 | grep -oE "[^ ]田\w?"
```

### (2) ディレクトリから特定の文字列を含むファイル名を表示する

> 問題
```
#例
#   入力
#       ディレクトリパス
#   出力
#       sedという文字列を含むファイル名を出力
```
> 解答

```zsh
% grep -ril " sed " ./note | sort
```

- 最後の`sort`はなくてもよい（あくまで出力順番をきれいにするため）

### (3) ディレクトリから特定の文字列を含むファイル名を表示する

> 問題

sedという文字列を含むshファイルの名前のみを表示したいとします

> 解答

```zsh
% find ディレクトリのパス -name "*.txt" | xargs grep -l "文字列"
```

とすればいいので

```zsh 
% find . -name "*.sh" | xargs grep -l " sed "
```

### (4) git管理レポジトリーのうち、指定のディレクトリのmodified fileのファイルのみをgit addする

modifiedのファイルのみをgit addしたい場合は

```zsh
% git add -u
```

で完結しますが、今回は指定のディレクトリのmodified fileのみをgit addしたい場合を考えます.


> 解答１

- `git status`コマンドを実行するとmodifiedファイルが一覧として出力されるのでそれを活用するパターンを紹介
- ただし、この解答はすでにステージングされたファイルも出力されてしまう（動作上の問題はない）

```zsh
% git status | grep modified | awk '{print $2}'| grep -E "note/" | xargs git add
```

> 解答2

- `git-ls-files`コマンドを実行すると「インデックスにキャッシュされているファイルを表示」するのでそれを活用するパターンを紹介
- すでにステージングされたファイルはgrepの検索対象外となる

コマンドマニュアルを確認すると

```
git-ls-files - Show information about files in the index and the working tree

-m, --modified
           Show modified files in the output
-o, --others
           Show other (i.e. untracked) files in the output
--exclude-standard
       Add the standard git exclusions: .git/info/exclude, .gitignore in each directory, and the user’s global exclusion file.
```

なので今回は `-m` オプションをつけて `grep` すれば良いとわかる. 解答は以下、

```zsh
% git ls-files -m | grep -E "note/" | xargs git add
```

### (5) git管理レポジトリーのうち、指定のディレクトリのmodified fileのファイルのみをgit addする

今回は指定のディレクトリのuntracked fileのみをgit addしたい場合を考えます.

> 解答

```zsh
% git ls-files -o --exclude-standard | grep -E "note/" | xargs git add
```
